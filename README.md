# 🏭 UDS Archivista Package

[<img alt="Made for UDS" src="https://raw.githubusercontent.com/defenseunicorns/uds-common/refs/heads/main/docs/assets/made-for-uds-bronze.svg" height="20px"/>](https://github.com/defenseunicorns/uds-core)
[![Latest Release](https://img.shields.io/github/v/release/defenseunicorns/uds-package-archivista)](https://github.com/defenseunicorns/uds-package-archivista/releases)
[![Build Status](https://img.shields.io/github/actions/workflow/status/defenseunicorns/uds-package-archivista/release.yaml)](https://github.com/defenseunicorns/uds-package-archivista/actions/workflows/release.yaml)
[![OpenSSF Scorecard](https://api.securityscorecards.dev/projects/github.com/defenseunicorns/uds-package-archivista/badge)](https://api.securityscorecards.dev/projects/github.com/defenseunicorns/uds-package-archivista)

> [!NOTE]
> `uds-package-archivista` is only a Bronze package and currently only provides a public Archivista instance. If you would like to improve the package we welcome PRs! (see [Contributing](#contributing) below)

This package is designed for use as part of a [UDS Software Factory](https://github.com/defenseunicorns/uds-software-factory) bundle deployed on [UDS Core](https://github.com/defenseunicorns/uds-core).

> Archivista is a graph and storage service for in-toto attestations. Archivista enables the discovery and retrieval of attestations for software artifacts. Archivista enables you to store and retrieve in-toto attestations, query for relationships between attestations, and validate Witness policy without the need to manually list expected attestations.

## Prerequisites

Archivista requires a Postgres database and S3 Compatible object storage.  You can learn more about configuring these and other options in the [configuration documentation](./docs/configuration.md).

## Releases

The released packages can be found in [ghcr](https://github.com/defenseunicorns/uds-package-archivista/pkgs/container/packages%2Fuds%2Farchivista).

## UDS Tasks (for local dev and CI)

*For local dev, this requires you install [uds-cli](https://github.com/defenseunicorns/uds-cli?tab=readme-ov-file#install)

> :white_check_mark: **Tip:** To get a list of tasks to run you can use `uds run --list`!

## Contributing

Please see the [CONTRIBUTING.md](./CONTRIBUTING.md)

## Development

When developing this package it is ideal to utilize the json schemas for UDS Bundles, Zarf Packages and Maru Tasks. This involves configuring your IDE to provide schema validation for the respective files used by each application. For guidance on how to set up this schema validation, please refer to the [guide](https://github.com/defenseunicorns/uds-common/blob/main/docs/uds-packages/development/development-ide-configuration.md) in uds-common.
