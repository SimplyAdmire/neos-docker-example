#!/usr/bin/env bash
source "./.env"
docker-compose exec db mysql -u$MYSQL_USER -p$MYSQL_PASSWORD $MYSQL_DATABASE $@
