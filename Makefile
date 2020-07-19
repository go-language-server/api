# ----------------------------------------------------------------------------
# global

SHELL = /usr/bin/env bash
GO_PATH := $(shell go env GOPATH)
PACKAGE := $(subst $(GO_PATH)/src/,,$(CURDIR))

# ----------------------------------------------------------------------------
# variables

PROTOC_VERSION ?= 3.12.3
GOLANG_VERSION ?= 1.14
ALPINE_VERSION ?= 3.12
PROTO_FILES := $(shell find lsp -type f -name '*.proto')

DOCKER_IMAGE ?= gcr.io/lsp-dev/protoc:${PROTOC_VERSION}
DOCKER_VOLUME_API ?= $(abspath $(dir ${CURDIR})/api):$(abspath /go/src/$(dir ${PACKAGE})/api)
DOCKER_VOLUME_GOPATH ?= ${CURDIR}:/go/src/${PACKAGE}
DOCKER_VOLUMES ?= ${DOCKER_VOLUME_API} ${DOCKER_VOLUME_GOPATH}
DOCKER_VOLUME_FLAGS ?= $(foreach volume,${DOCKER_VOLUMES},-v $(volume):cached)

# ----------------------------------------------------------------------------
##@ targets

all: protoc format

.PHONY: protoc
protoc:  ## Run protoc.
	docker container run --rm -it ${DOCKER_VOLUME_FLAGS} -w /go/src/${PACKAGE} ${DOCKER_IMAGE} --descriptor_set_out=fileset.pb --include_imports --include_source_info -I/go/src/${PACKAGE} -I/go/src/${PACKAGE}/third_party/googleapis --go_out=annotate_code=true:/go/src --go-grpc_out=annotate_code=true:/go/src $(foreach f,${PROTO_FILES},/go/src/${PACKAGE}/$(f))
	docker container run --rm -it ${DOCKER_VOLUME_FLAGS} -w /go/src/${PACKAGE} --entrypoint=sh ${DOCKER_IMAGE} -c 'for p in $(foreach f,${PROTO_FILES},/go/src/${PACKAGE}/$(f)); do protoc -I/go/src/${PACKAGE} -I/go/src/${PACKAGE}/third_party/googleapis --grpc-gateway_out=/go/src --doc_out=`dirname $$p` --doc_opt=/go/src/${PACKAGE}/hack/template/protoc-gen-doc.tmpl,README.md $$p; done'

.PHONY: tools
tools:  ## Build tools container image.
	docker buildx build --rm --build-arg PROTOC_VERSION=${PROTOC_VERSION} --build-arg GOLANG_VERSION=${GOLANG_VERSION} --build-arg ALPINE_VERSION=${ALPINE_VERSION} --tag ${DOCKER_IMAGE} --target golang --load ./tools

.PHONY: api-linter
api-linter: DOCKER_VOLUMES=${DOCKER_VOLUME_GOPATH}
api-linter:  ## Lint proto files with api-linter.
	docker container run --rm -it -v ${CURDIR}:/go/src/${PACKAGE}:cached -w /go/src/${PACKAGE} --entrypoint=api-linter gcr.io/lsp-dev/protoc:${PROTOC_VERSION} --config=/go/src/${PACKAGE}/.api-linter.yaml --output-format=yaml -I /go/src/${PACKAGE}/third_party/googleapis $(foreach f,${PROTO_FILES},/go/src/${PACKAGE}/$(f))

.PHONY: format
format:  ## Format generated files with gofumports.
	gofumports -w -local=go.lsp.dev/api ../api

third_party/googleapis:
	git subtree add -q --prefix=third_party/googleapis --squash https://github.com/googleapis/googleapis.git master

.PHONY: googleapis
googleapis:  ## Upgrade third_party/googleapis.
	git subtree pull -q --prefix=third_party/googleapis --squash https://github.com/googleapis/googleapis.git master
	@find third_party/googleapis -mindepth 1 -maxdepth 1 -not -iwholename 'third_party/googleapis/google' -exec rm -rf {} \; > /dev/null 2>&1
	@find third_party/googleapis -mindepth 2 -type d -not -iwholename 'third_party/googleapis/google/api' -and -not -iwholename 'third_party/googleapis/google/rpc' -and -not -iwholename 'third_party/googleapis/google/longrunning' -exec rm -rf {} \; > /dev/null 2>&1 || true
	@find third_party/googleapis -mindepth 1 -type f -not -name '*.proto' -delete > /dev/null 2>&1
	@git add third_party/googleapis
	@git amend


# ----------------------------------------------------------------------------
##@ help

.PHONY: help
help:  ## Show make target help.
	@awk 'BEGIN {FS = ":.*##"; printf "\nUsage:\n  make \033[33m<target>\033[0m\n"} /^[a-zA-Z_0-9\/_-]+:.*?##/ { printf "  \033[36m%-25s\033[0m %s\n", $$1, $$2 } /^##@/ { printf "\n\033[1m%s\033[0m\n", substr($$0, 5) } ' $(MAKEFILE_LIST)

.PHONY: env/%
env/%:  ## Print the value of MAKEFILE_VARIABLE. Use `make env/MAKEFILE_VARIABLE`.
	@echo $($*)
