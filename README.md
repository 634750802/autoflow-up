# AutoFlow Up

This repo shows how to star an empty [AutoFlow](https://github.com/pingcap/autoflow) service.

## Pre-Requirements

- TiDB (Vector Search Enabled)
  - Local [TiUP](https://tiup.io/) Playground installed
  - [TiDB Cloud Serverless](https://www.pingcap.com/tidb-cloud-serverless/)
  - TiDB v8.4 (with at least one TiFlash node) or later
- Docker compose

## Prepare TiDB

### With TiUP

```bash
./start-tidb.sh
```

### With TiDB Cloud Serverless

Update .env file

```dotenv
TIDB_HOST=
TIDB_USER=
TIDB_PASSWORD=
TIDB_DATABASE=
TIDB_SSL=true
```

## Start AutoFlow

```shell
export AUTOFLOW_VERSION=branch-main # Optional, set to released version if needed

./start-autoflow.sh
```

Initial credentials will be print in `bootstrap.stdout`

### Services

- **Backend**: http://127.0.0.1:15001
- **Frontend**: http://127.0.0.1:13001
