#!/usr/bin/env bash

set -ex

BUILDPACK_NAME=opa
BUILDPACK_PATH=$BUILDPACK_NAME.zip
OPA_VERSION=0.4.10
OPA_ARCH=amd64
OPA_OS=linux
OPA_BIN=opa

curl https://github.com/open-policy-agent/opa/releases/download/v$OPA_VERSION/opa_${OPA_OS}_${OPA_ARCH} -Lo ./opa
chmod 755  $OPA_BIN
echo $OPA_VERSION > VERSION

rm -f $BUILDPACK_PATH
zip -r $BUILDPACK_PATH $OPA_BIN VERSION bin/* scripts/*
