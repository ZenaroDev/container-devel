#!/bin/sh

set -ouex pipefail

cd /tmp

git clone --recursive https://github.com/Vanilla-OS/apx.git

cd apx

GOCACHE=/tmp/cache/go-build GOENV=/tmp/config/go/env GOMODCACHE=/tmp/go/pkg/mod GOPATH=/tmp/go make build

make install PREFIX=usr

make install-manpages PREFIX=usr
