// Copyright 2020 The Go Language Server Authors
// SPDX-License-Identifier: BSD-3-Clause

// +build tools

// Package tools manages the project tools dependenncies.
package tools

import (
	_ "mvdan.cc/gofumpt"
	_ "mvdan.cc/gofumpt/gofumports"
)
