#!/bin/bash

cd "$(dirname "$0")"

docker container stop zway 
docker container rm zway 
docker container run -d --restart unless-stopped -it \
 --mount source=zway-opt,target=/opt/z-way-server \
 --name=zway \
 --device /dev/ttyAMA0:/dev/ttyAMA0:rw \
 -p 8083:8083 \
 -p 8084:8084 \
 zway:latest
