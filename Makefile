# ----------------------------------------------------------------------------
##@ global

SHELL := /usr/bin/env bash
GO_PATH := $(shell go env GOPATH)
PACKAGE := $(subst $(GO_PATH)/src/,,$(CURDIR))

# ----------------------------------------------------------------------------
##@ variables

PROTOC_VERSION ?= 3.12.3
PROTO_FILES := $(shell find lsp -type f -name '*.proto')

# ----------------------------------------------------------------------------
##@ targets

all: protoc/docker format

.PHONY: protoc/docker
protoc/docker:
	-@rm -rf protocol uri jsonrpc2
	docker container run --rm -it -v $(abspath $(dir ${CURDIR})/api):$(abspath /go/src/$(dir ${PACKAGE})/api):z,delegated -v ${CURDIR}:/go/src/${PACKAGE}:z,delegated -w /go/src/${PACKAGE} gcr.io/containerz/go.lsp.dev/protoc:${PROTOC_VERSION} -I/go/src/${PACKAGE} -I/go/src/${PACKAGE}/third_party/googleapis --go_out=annotate_code=true:/go/src --go-grpc_out=annotate_code=true:/go/src $(foreach f,${PROTO_FILES},/go/src/${PACKAGE}/$(f)) 
	docker container run --rm -it -v $(abspath $(dir ${CURDIR})/api):$(abspath /go/src/$(dir ${PACKAGE})/api):z,delegated -v ${CURDIR}:/go/src/${PACKAGE}:z,delegated -w /go/src/${PACKAGE} --entrypoint=sh gcr.io/containerz/go.lsp.dev/protoc:${PROTOC_VERSION} -c 'for p in $(foreach f,${PROTO_FILES},/go/src/${PACKAGE}/$(f)); do protoc -I/go/src/${PACKAGE} -I/go/src/${PACKAGE}/third_party/googleapis --grpc-gateway_out=/go/src --doc_out=`dirname $$p` --doc_opt=/go/src/${PACKAGE}/hack/template/protoc-gen-doc.tmpl,README.md $$p; done'
	@while :; do chmod 755 ../api/protocol ../api/protocol/rpc ../api/uri ../api/jsonrpc2 > /dev/null 2>&1 && exit 0; done  # mutagen workaround

.PHONY: protoc/docker
protoc/local:
	protoc -I. -Ithird_party/googleapis --go_out=annotate_code=true:${GO_PATH}/src --go-grpc_out=annotate_code=true:${GO_PATH}/src ${PROTO_FILES}
	for p in ${PROTO_FILES}; do protoc -I. -Ithird_party/googleapis --grpc-gateway_out=${GO_PATH}/src --doc_out=`dirname $$p` --doc_opt=./hack/template/protoc-gen-doc.tmpl,README.md $$p; done
	gofumports -w -local=${PACKAGE} .

.PHONY: tools
tools:
	docker buildx build --rm --build-arg PROTOC_VERSION=3.12.3 --build-arg GOLANG_VERSION=1.14 --build-arg ALPINE_VERSION=3.12 --tag gcr.io/containerz/go.lsp.dev/protoc:3.12.3 --target golang --load ./tools

.PHONY: api-linter
api-linter:  # lint proto files with api-linter
	docker container run --rm -it -v ${CURDIR}:/go/src/${PACKAGE}:z,delegated -w /go/src/${PACKAGE} --entrypoint=api-linter gcr.io/containerz/go.lsp.dev/protoc:${PROTOC_VERSION} --config=/go/src/${PACKAGE}/.api-linter.yaml --output-format=yaml -I /go/src/${PACKAGE}/third_party/googleapis $(foreach f,${PROTO_FILES},/go/src/${PACKAGE}/$(f))

.PHONY: format
format:
	gofumports -w -local=go.lsp.dev/api ../api

third_party/googleapis:
	git subtree add -q --prefix third_party/googleapis --squash googleapis master

.PHONY: googleapis
googleapis: third_party/googleapis
	@find third_party/googleapis -mindepth 1 -maxdepth 1 -not -iwholename 'third_party/googleapis/google' -exec rm -rf {} \; > /dev/null 2>&1
	@find third_party/googleapis -mindepth 2 -type d -not -iwholename 'third_party/googleapis/google/api' -and -not -iwholename 'third_party/googleapis/google/rpc' -and -not -iwholename 'third_party/googleapis/google/longrunning' -exec rm -rf {} \; > /dev/null 2>&1 || true
	@find third_party/googleapis -mindepth 1 -type f -not -name '*.proto' -delete > /dev/null 2>&1
	@git add third_party/googleapis
	@git amend