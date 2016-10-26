#!/usr/bin/env bash
source "./.env"
docker-compose run --rm --entrypoint "yarn" npm $@

if [ $1 == 'add' ]; then
    bin/npm.sh run postinstall
fi
