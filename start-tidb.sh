#!/bin/bash

set -e

tiup playground v8.4.0 --tag ${PLAYGROUND_TAG:-"autoflow-demo"} --db 1 --pd 1 --tiflash 1 --kv 1
