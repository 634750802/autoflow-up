#!/bin/bash

set -e

echo $AUTOFLOW_VERSION

docker compose pull --policy always

docker compose run --rm backend /bin/sh -c "alembic upgrade head"
docker compose run --rm backend /bin/sh -c "python bootstrap.py" >> bootstrap.stdout

docker compose up
