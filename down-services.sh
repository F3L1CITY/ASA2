#!/bin/bash

docker-compose down

docker rm -f ns1
docker rm -f servermails
docker rm -f proxy
docker rm -f webmail
docker rm -f web

docker rmi -f dns
docker rmi -f servermails
docker rmi -f webmail
docker rmi -f web
docker rmi -f proxy