#!/usr/bin/env bash
source "./.env"
docker-compose exec --user=1000:33 php php flow $@
