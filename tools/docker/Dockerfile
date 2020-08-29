# syntax = docker.io/docker/dockerfile:experimental

ARG PROTOC_VERSION
ARG GOLANG_VERSION
ARG ALPINE_VERSION

# target: golang-builder
FROM docker.io/golang:${GOLANG_VERSION}-alpine${ALPINE_VERSION} AS golang-builder
ENV \
	OUTDIR=/out \
	CGO_ENABLED=0 \
	GO111MODULE=on
RUN set -eux && \
	apk --no-cache add \
		git
COPY go.mod go.sum tools.go /go/src/go.lsp.dev/proto/tools/docker/
WORKDIR /go/src/go.lsp.dev/proto/tools/docker
RUN \
	--mount=target=/root/.cache/go-build,type=cache \
	--mount=target=/go/src/mod,type=cache \
	set -eux && \
	GOBIN="${OUTDIR}/usr/local/bin" go install -v \
		-tags='osusergo,netgo,static,static_build' \
		-gcflags="all=-trimpath=${GOPATH}/go.lsp.dev/proto/tools/docker" \
		-ldflags="-d -s -w '-extldflags=-static'" \
		-asmflags="all=-trimpath=${GOPATH}/go.lsp.dev/proto/tools/docker" \
		-installsuffix='netgo' \
	$(go list -f '{{ join .Imports " " }}' -tags=tools)

# target: tools
FROM gcr.io/containerz/protoc/golang:${GOLANG_VERSION}-${PROTOC_VERSION}-debug AS tools
COPY --from=golang-builder --chown=nonroot:nonroot /out/ /
USER nonroot:nonroot
LABEL maintainer="The Go Language Server Authors" \
      org.opencontainers.image.title="gcr.io/lsp-dev/protoc" \
      org.opencontainers.image.description="protoc and protoc-gen-go related binaries container image" \
      org.opencontainers.image.url="https://github.com/go-language-server/api" \
      org.opencontainers.image.source="git@github.com:go-language-server/api" 
ENTRYPOINT ["protoc"]
