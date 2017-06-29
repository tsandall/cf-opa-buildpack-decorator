#!/usr/bin/env bash

set -x

while [ 1 ]; do
    curl http://opa.cfapps.pie-27.cfplatformeng.com/v1/policies/example?source > /tmp/policy.rego
    curl http://localhost:8181/v1/policies/example --data-binary @/tmp/policy.rego -X PUT
    sleep 10
done
