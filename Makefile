# ----------------------------------------------------------------------------
# global

SHELL = /usr/bin/env bash
GO_OS := $(shell go env GOOS)
GO_ARCH := $(shell go env GOARCH)
GO_PATH := $(shell go env GOPATH)
PACKAGE := $(subst $(GO_PATH)/src/,,$(CURDIR))

# ----------------------------------------------------------------------------
# variables

PROTOC_VERSION ?= 3.12.3
GOLANG_VERSION ?= 1.14
ALPINE_VERSION ?= 3.12

PROTO_FILES_PROTOCOL := $(shell find protocol -maxdepth 1 -type f -name '*.proto')
PROTO_FILES_PROTOCOL_RPC := $(shell find protocol/rpc -type f -name '*.proto')
PROTO_FILES_URI := $(shell find uri -type f -name '*.proto')
PROTO_FILES := ${PROTO_FILES_PROTOCOL} ${PROTO_FILES_PROTOCOL_RPC} ${PROTO_FILES_URI}
PROTOC_INCLUDES ?= -I/go/src/${PACKAGE} -I/go/src/${PACKAGE}/third_party/googleapis
PROTOC_OUT ?= /go/src

DOCKER_CONTAINER_IMAGE ?= gcr.io/lsp-dev/protoc:${PROTOC_VERSION}
DOCKER_VOLUME_API ?= $(abspath $(dir ${CURDIR})):$(abspath /go/src/$(dir ${PACKAGE}))
DOCKER_VOLUME_GOPATH ?= ${CURDIR}:/go/src/${PACKAGE}
DOCKER_VOLUMES ?= ${DOCKER_VOLUME_API} ${DOCKER_VOLUME_GOPATH}
DOCKER_VOLUME_FLAGS ?= $(foreach volume,${DOCKER_VOLUMES},-v $(volume):cached)

# ----------------------------------------------------------------------------
##@ targets

all: protoc protoc/grpc-gateway protoc/gen-doc format

.PHONY: protoc
protoc:  ## Run protoc.
	docker container run --rm -it ${DOCKER_VOLUME_FLAGS} -w /go/src/${PACKAGE} ${DOCKER_CONTAINER_IMAGE} --go_out=annotate_code=true:${PROTOC_OUT} --go-grpc_out=annotate_code=true:${PROTOC_OUT} ${PROTOC_INCLUDES} --descriptor_set_out=fileset.pb --include_imports --include_source_info $(foreach f,${PROTO_FILES},$(abspath /go/src/${PACKAGE}/$(f)))

.PHONY: protoc/grpc-gateway
protoc/grpc-gateway:
	docker container run --rm -it ${DOCKER_VOLUME_FLAGS} -w /go/src/${PACKAGE} ${DOCKER_CONTAINER_IMAGE} --grpc-gateway_out=${PROTOC_OUT} ${PROTOC_INCLUDES} $(foreach f,${PROTO_FILES_PROTOCOL_RPC},$(abspath /go/src/${PACKAGE}/$(f)))

.PHONY: protoc/gen-doc
protoc/gen-doc:
	docker container run --rm -it ${DOCKER_VOLUME_FLAGS} -w /go/src/${PACKAGE} ${DOCKER_CONTAINER_IMAGE} --doc_out=/go/src/${PACKAGE}/protocol --doc_opt=/go/src/${PACKAGE}/hack/template/protoc-gen-doc.tmpl,README.md ${PROTOC_INCLUDES} $(foreach f,${PROTO_FILES_PROTOCOL},$(abspath /go/src/${PACKAGE}/$(f)))
	docker container run --rm -it ${DOCKER_VOLUME_FLAGS} -w /go/src/${PACKAGE} ${DOCKER_CONTAINER_IMAGE} --doc_out=/go/src/${PACKAGE}/protocol/rpc --doc_opt=/go/src/${PACKAGE}/hack/template/protoc-gen-doc.tmpl,README.md ${PROTOC_INCLUDES} $(foreach f,${PROTO_FILES_PROTOCOL_RPC},$(abspath /go/src/${PACKAGE}/$(f)))
	docker container run --rm -it ${DOCKER_VOLUME_FLAGS} -w /go/src/${PACKAGE} ${DOCKER_CONTAINER_IMAGE} --doc_out=/go/src/${PACKAGE}/uri --doc_opt=/go/src/${PACKAGE}/hack/template/protoc-gen-doc.tmpl,README.md ${PROTOC_INCLUDES} $(foreach f,${PROTO_FILES_URI},$(abspath /go/src/${PACKAGE}/$(f)))

.PHONY: tools
tools:  ## Build tools container image.
	docker buildx build --rm --build-arg PROTOC_VERSION=${PROTOC_VERSION} --build-arg GOLANG_VERSION=${GOLANG_VERSION} --build-arg ALPINE_VERSION=${ALPINE_VERSION} --tag ${DOCKER_CONTAINER_IMAGE} --target tools --output=type=docker ./tools/docker

.PHONY: api-linter
api-linter: DOCKER_VOLUMES=${DOCKER_VOLUME_GOPATH}
api-linter:  ## Lint proto files with api-linter.
	docker container run --rm -it -v ${CURDIR}:/go/src/${PACKAGE}:cached -w /go/src/${PACKAGE} --entrypoint=api-linter ${DOCKER_CONTAINER_IMAGE} --config=/go/src/${PACKAGE}/.api-linter.yaml --output-format=yaml --set-exit-status ${PROTOC_INCLUDES} $(foreach f,${PROTO_FILES},/go/src/${PACKAGE}/$(f))

.PHONY: format
format:  ## Format generated files with gofumports.
	gofumports -w -local=${PACKAGE} ./protocol ./uri

third_party/googleapis:
	git subtree add -q --prefix=third_party/googleapis --squash https://github.com/googleapis/googleapis.git master

.PHONY: third_party/googleapis/pull
third_party/googleapis/pull:
	git stash
	git subtree pull -q --prefix=third_party/googleapis --squash https://github.com/googleapis/googleapis.git master || git add third_party/googleapis && git merge --continue

.PHONY: googleapis
googleapis: third_party/googleapis third_party/googleapis/pull
googleapis:  ## Upgrade third_party/googleapis.
	find third_party/googleapis -mindepth 1 -maxdepth 1 -not -iwholename 'third_party/googleapis/google' -exec rm -rf {} \; > /dev/null 2>&1
	find third_party/googleapis -mindepth 2 -type d -not -iwholename 'third_party/googleapis/google/api' -and -not -iwholename 'third_party/googleapis/google/rpc' -and -not -iwholename 'third_party/googleapis/google/longrunning' -exec rm -rf {} \; > /dev/null 2>&1 || true
	find third_party/googleapis -mindepth 1 -type f -not -name '*.proto' -delete > /dev/null 2>&1
	git add third_party/googleapis
	git amend
	git stash pop


# ----------------------------------------------------------------------------
##@ help

.PHONY: help
help:  ## Show make target help.
	@awk 'BEGIN {FS = ":.*##"; printf "\nUsage:\n  make \033[33m<target>\033[0m\n"} /^[a-zA-Z_0-9\/_-]+:.*?##/ { printf "  \033[36m%-25s\033[0m %s\n", $$1, $$2 } /^##@/ { printf "\n\033[1m%s\033[0m\n", substr($$0, 5) } ' $(MAKEFILE_LIST)

.PHONY: env/%
env/%:  ## Print the value of MAKEFILE_VARIABLE. Use `make env/MAKEFILE_VARIABLE`.
	@echo $($*)
