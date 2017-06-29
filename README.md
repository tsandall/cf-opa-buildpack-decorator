# OPA Cloud Foundry Buildpack Decorator

This repository contains a Cloud Foundry Buildpack Decorator that injects the [Open Policy Agent (OPA)](https://github.com/open-policy-agent/opa) into Droplets that apps are running in.

The decorator includes two scripts:

1. `run-opa.sh` starts OPA in server mode
1. `sync-policy.sh` synchronizes OPA policies into OPA

> This is an experimental project. `sync-policy.sh` expects to be provided with
> an OPA API endpoint that it can reach out to to pull down policies. In the
> future, sync-policy.sh could pull from Cloud Foundry itself or an external
> endpoint such as S3.

For more information on Buildpack Decorators see https://github.com/cf-platform-eng/meta-buildpack.

The [example](./example) directory contains a dummy app that can be pushed into
Cloud Foundry:

```
cd example
cf push -c 'python echo_server.py' demo-restful-api
```

## Usage

1. Run `make` to produce the buildpack (`opa.zip`) in this directory.

1. Push the buildpack into Cloud Foundry:

    ```
    cf delete-biuldpack -f opa
    cf create-buildpack opa opa.zip 99
    ```
