#!/bin/bash
#
# Copyright SecureKey Technologies Inc. All Rights Reserved.
#
# SPDX-License-Identifier: Apache-2.0
#
set -e


echo "Running kms integration tests..."

PWD=$(pwd)

cd test/bdd
go test -count=1 -v . -p 1 -timeout=10m -race

cd $PWD
