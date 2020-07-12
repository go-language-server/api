# syntax = docker.io/docker/dockerfile-upstream:master-experimental

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
COPY go.mod go.sum tools.go /go/src/go.lsp.dev/proto/tools/
WORKDIR /go/src/go.lsp.dev/proto/tools
RUN --mount=type=cache,target=/root/.cache/go-build --mount=type=cache,target=/go/src/mod/cache \
	set -eux && \
	GOBIN="${OUTDIR}/usr/local/bin" go install -v -tags='osusergo,netgo,static' -gcflags="all=-trimpath=${GOPATH}" -ldflags="-d -s -w '-extldflags=-static'" -asmflags="all=-trimpath=${GOPATH}" -installsuffix='netgo' $(go list -f '{{ join .Imports " " }}' -tags=tools)

# target: golang
FROM gcr.io/containerz/protoc/golang:${PROTOC_VERSION}-debug AS golang
COPY --from=golang-builder --chown=nonroot:nonroot /out/ /
USER nonroot:nonroot
LABEL maintainer="The Go Language Server Authors" \
      org.opencontainers.image.title="gcr.io/containerz/go.lsp.dev/protoc" \
      org.opencontainers.image.description="protoc and protoc-gen-go related binaries container image" \
      org.opencontainers.image.url="https://github.com/go-language-server/proto" \
      org.opencontainers.image.source="git@github.com:go-language-server/proto" 
ENTRYPOINT ["protoc"]
