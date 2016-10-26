#!/usr/bin/env bash
source "./.env"

if [ $1 == "install" ]; then
    echo "[INFO] Use bin/yarn.sh instead, redirecting..."
    bin/yarn.sh $@
else
    docker-compose run --rm --entrypoint "/root/run-npm.sh" npm $@
fi
