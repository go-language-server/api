# ----------------------------------------------------------------------------
# global

SHELL = /usr/bin/env bash
GO_OS := $(shell go env GOOS)
GO_ARCH := $(shell go env GOARCH)
GO_PATH := $(shell go env GOPATH)
PACKAGE := $(subst $(GO_PATH)/src/,,$(CURDIR))

TOOLS_PATH = ${CURDIR}/tools/bin

# ----------------------------------------------------------------------------
# variables

PROTOC_DIGEST ?= sha256:31a95363fe498a14a6e46a2c78329c192a4d5f0c52528bd9796fccea1fc6d99c  # 3.14.0-1.15-debug 
PROTOC_VERSION ?= 3.14.0
GOLANG_VERSION ?= 1.15
ALPINE_VERSION ?= 3.12

PROTO_FILES_PROTOCOL := $(shell find protocol -maxdepth 1 -type f -name '*.proto')
PROTO_FILES_PROTOCOL_RPC := $(shell find protocol/rpc -type f -name '*.proto')
PROTO_FILES_URI := $(shell find uri -type f -name '*.proto')
PROTO_FILES := ${PROTO_FILES_PROTOCOL} ${PROTO_FILES_PROTOCOL_RPC} ${PROTO_FILES_URI}
PROTOC_INCLUDES ?= -I/go/src/${PACKAGE} -I/go/src/${PACKAGE}/third_party
PROTOC_OUT ?= /go/src
PROTOC_OUT_SRCS ?= ./protocol ./uri

DOCKER_CONTAINER_IMAGE ?= gcr.io/containerz/go.lsp.dev/protoc:${PROTOC_VERSION}-${GOLANG_VERSION}
DOCKER_VOLUME_API ?= $(abspath $(dir ${CURDIR})):$(abspath /go/src/$(dir ${PACKAGE}))
DOCKER_VOLUME_GOPATH ?= ${CURDIR}:/go/src/${PACKAGE}
DOCKER_VOLUMES ?= ${DOCKER_VOLUME_API} ${DOCKER_VOLUME_GOPATH}
DOCKER_VOLUME_FLAGS ?= $(foreach volume,${DOCKER_VOLUMES},-v $(volume):cached)

# ----------------------------------------------------------------------------
# targets

all: protoc protoc-gen-grpc-gateway protoc-gen-doc protoc-gen-openapiv2 gofumpt gofumports


##@ tools

${TOOLS_PATH}/gofumpt: tools
${TOOLS_PATH}/gofumports: tools

.PHONY: tools
tools:  ## Build tools container image.
	@pushd ./tools > /dev/null 2>&1; GOBIN=${TOOLS_PATH} go install -v `go list -f '{{ join .Imports " " }}' -tags=tools`

.PHONY: gofumpt
gofumpt: ${TOOLS_PATH}/gofumpt
gofumpt:  ## Format generated files with gofumports.
	${TOOLS_PATH}/$@ -s -extra -w ${PROTOC_OUT_SRCS}

.PHONY: gofumports
gofumports: ${TOOLS_PATH}/gofumports
gofumports:  ## Format generated files with gofumports.
	${TOOLS_PATH}/$@ -w -local=${PACKAGE} ${PROTOC_OUT_SRCS}

.PHONY: tools/docker
tools/docker:  ## Build tools container image.
	docker buildx build --rm --build-arg PROTOC_DIGEST=${PROTOC_DIGEST} --build-arg GOLANG_VERSION=${GOLANG_VERSION} --build-arg ALPINE_VERSION=${ALPINE_VERSION} --tag ${DOCKER_CONTAINER_IMAGE} --target tools --output=type=docker ./tools/docker

.PHONY: protoc
protoc:  ## Run protoc.
	docker container run --rm -it ${DOCKER_VOLUME_FLAGS} -w /go/src/${PACKAGE} ${DOCKER_CONTAINER_IMAGE} --go_out=annotate_code=true:${PROTOC_OUT} --go-grpc_out=annotate_code=true:${PROTOC_OUT} ${PROTOC_INCLUDES} --descriptor_set_out=fileset.pb --include_imports --include_source_info $(foreach f,${PROTO_FILES},$(abspath /go/src/${PACKAGE}/$(f)))

.PHONY: protoc-gen-grpc-gateway
protoc-gen-grpc-gateway:  ## Run protoc-gen-grpc-gateway.
	docker container run --rm -it ${DOCKER_VOLUME_FLAGS} -w /go/src/${PACKAGE} ${DOCKER_CONTAINER_IMAGE} --grpc-gateway_out=${PROTOC_OUT} ${PROTOC_INCLUDES} $(foreach f,${PROTO_FILES_PROTOCOL_RPC},$(abspath /go/src/${PACKAGE}/$(f)))

.PHONY: protoc-gen-doc
protoc-gen-doc:  ## Run protoc-gen-doc.
	docker container run --rm -it ${DOCKER_VOLUME_FLAGS} -w /go/src/${PACKAGE} ${DOCKER_CONTAINER_IMAGE} --doc_out=/go/src/${PACKAGE}/protocol --doc_opt=/go/src/${PACKAGE}/hack/template/protoc-gen-doc.tmpl,README.md ${PROTOC_INCLUDES} $(foreach f,${PROTO_FILES_PROTOCOL},$(abspath /go/src/${PACKAGE}/$(f)))
	docker container run --rm -it ${DOCKER_VOLUME_FLAGS} -w /go/src/${PACKAGE} ${DOCKER_CONTAINER_IMAGE} --doc_out=/go/src/${PACKAGE}/protocol/rpc --doc_opt=/go/src/${PACKAGE}/hack/template/protoc-gen-doc.tmpl,README.md ${PROTOC_INCLUDES} $(foreach f,${PROTO_FILES_PROTOCOL_RPC},$(abspath /go/src/${PACKAGE}/$(f)))
	docker container run --rm -it ${DOCKER_VOLUME_FLAGS} -w /go/src/${PACKAGE} ${DOCKER_CONTAINER_IMAGE} --doc_out=/go/src/${PACKAGE}/uri --doc_opt=/go/src/${PACKAGE}/hack/template/protoc-gen-doc.tmpl,README.md ${PROTOC_INCLUDES} $(foreach f,${PROTO_FILES_URI},$(abspath /go/src/${PACKAGE}/$(f)))

.PHONY: api-linter
api-linter: DOCKER_VOLUMES=${DOCKER_VOLUME_GOPATH}
api-linter:  ## Lint proto files with api-linter.
	docker container run --rm -it -v ${CURDIR}:/go/src/${PACKAGE}:cached -w /go/src/${PACKAGE} --entrypoint=api-linter ${DOCKER_CONTAINER_IMAGE} --config=/go/src/${PACKAGE}/.api-linter.yaml --output-format=yaml --set-exit-status ${PROTOC_INCLUDES} $(foreach f,${PROTO_FILES},/go/src/${PACKAGE}/$(f))


##@ help

.PHONY: help
help:  ## Show make target help.
	@awk 'BEGIN {FS = ":.*##"; printf "\nUsage:\n  make \033[33m<target>\033[0m\n"} /^[a-zA-Z_0-9\/_-]+:.*?##/ { printf "  \033[36m%-25s\033[0m %s\n", $$1, $$2 } /^##@/ { printf "\n\033[1m%s\033[0m\n", substr($$0, 5) } ' $(MAKEFILE_LIST)

.PHONY: env/%
env/%:  ## Print the value of MAKEFILE_VARIABLE. Use `make env/MAKEFILE_VARIABLE`.
	@echo $($*)
