// Copyright 2020 The Go Language Server Authors
// SPDX-License-Identifier: BSD-3-Clause

// +build tools

// Package tools manages the project tools dependenncies.
package tools

import (
	_ "github.com/googleapis/api-linter/cmd/api-linter"
	_ "github.com/googleapis/gnostic/apps/protoc-gen-openapi"
	_ "github.com/grpc-ecosystem/grpc-gateway/v2/protoc-gen-grpc-gateway"
	_ "github.com/pseudomuto/protoc-gen-doc/cmd/protoc-gen-doc"
	_ "go.lsp.dev/tools/cmd/protoc-gen-go-jsonshim"
)
