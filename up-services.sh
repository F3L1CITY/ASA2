#!/bin/bash

docker-compose up -d --build

docker exec servermails /etc/init.d/postfix restart
docker exec servermails /etc/init.d/dovecot restart

docker exec webmail ./process_02.sh
