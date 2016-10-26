#!/usr/bin/env bash
source "./.env"
docker exec -i $(docker-compose ps | grep _db_ | awk '{print $1}') mysql -u$MYSQL_USER -p$MYSQL_PASSWORD $MYSQL_DATABASE
