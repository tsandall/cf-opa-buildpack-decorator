#!/usr/bin/env bash

build_path=$1

$build_path/opa run --server &
$build_path/sync-policy.sh &
