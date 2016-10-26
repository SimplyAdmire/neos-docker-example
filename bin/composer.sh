#!/usr/bin/env bash
source "./.env"
docker-compose run --rm composer $@

if [ -f vendor/bin/typo3cms ]; then
    bin/typo3cms.sh install:generatepackagestates
fi
