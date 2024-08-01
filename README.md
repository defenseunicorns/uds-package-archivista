# 🏭 UDS Archivista Package

[![Latest Release](https://img.shields.io/github/v/release/defenseunicorns/uds-package-archivista)](https://github.com/defenseunicorns/uds-package-archivista/releases)
[![Build Status](https://img.shields.io/github/actions/workflow/status/defenseunicorns/uds-package-archivista/tag-and-release.yaml)](https://github.com/defenseunicorns/uds-package-archivista/actions/workflows/tag-and-release.yaml)
[![OpenSSF Scorecard](https://api.securityscorecards.dev/projects/github.com/defenseunicorns/uds-package-archivista/badge)](https://api.securityscorecards.dev/projects/github.com/defenseunicorns/uds-package-archivista)

This package is designed for use as part of a [UDS Software Factory](https://github.com/defenseunicorns/uds-software-factory) bundle deployed on [UDS Core](https://github.com/defenseunicorns/uds-core).

## Prerequisites

Archivista requires 2 dependencies, postgres and s3 compatible object storage. Wiring Archivista to your dependencies is done primarily via helm values, which will require the use of a bundle created with uds-cli.

### Postgres

Postgres configuration is setup in the `uds-archivista-config` chart and should be done via bundle overrides (variables or values) like the below:
```yaml
    overrides:
      archivista:
        uds-archivista-config:
          values:
            - path: "postgres.host"
              value: "pg-cluster.postgres.svc.cluster.local"
```
### S3 Compatible Object Storage

Object storage configuration is setup in the `uds-archivista-config` chart and should be done via bundle overrides (variables or values) like the below:
```yaml
    overrides:
      archivista:
        uds-archivista-config:
          values:
            - path: "objectStorage.endpoint"
              value: "minio.dev-minio.svc.cluster.local:9000"
```

The full list of override config can be found in the values under `objectStorage` [here](./chart/values.yaml). In addition zarf vars are exposed for `ACCESS_KEY` and `SECRET_KEY` for convenience if using import/exports in your bundle.


## Flavors

| Flavor | Description | Example Creation |
| ------ | ----------- | ---------------- |
| upstream | Uses upstream images within the package. | `zarf package create . -f upstream` |

## Releases

The released packages can be found in [ghcr](https://github.com/defenseunicorns/uds-package-archivista/pkgs/container/packages%2Fuds%2Farchivista).

## UDS Tasks (for local dev and CI)

*For local dev, this requires you install [uds-cli](https://github.com/defenseunicorns/uds-cli?tab=readme-ov-file#install)

> :white_check_mark: **Tip:** To get a list of tasks to run you can use `uds run --list`!

## Contributing

Please see the [CONTRIBUTING.md](./CONTRIBUTING.md)
