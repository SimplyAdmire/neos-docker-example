#!/usr/bin/env bash
source "./.env"
docker-compose run --rm npm run gulp $@
