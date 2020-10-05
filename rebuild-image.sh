#!/bin/bash
SERVICE_NAME=$1;
echo "Service Name : $SERVICE_NAME"
docker build -t "compose_${SERVICE_NAME}" .

(cd ../compose && docker-compose stop $SERVICE_NAME && docker-compose rm -f $SERVICE_NAME && docker-compose -p "compose" up -d $SERVICE_NAME)
