# Configuration

Archivista is configured through the upstream [Archivista chart](https://github.com/in-toto/archivista/tree/main/chart) as well as a UDS configuration chart [uds-archivista-config](../chart).

# Prerequisites

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
            - path: "storage.endpoint"
              value: "minio.dev-minio.svc.cluster.local:9000"
```

The full list of override config can be found in the values under `storage` [here](./chart/values.yaml). In addition zarf vars are exposed for `ACCESS_KEY` and `SECRET_KEY` for convenience if using import/exports in your bundle.
