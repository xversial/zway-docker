#!/bin/bash

cd "$(dirname "$0")"

docker container stop zway 
docker container rm zway 
docker container run -d --restart unless-stopped -it --mount source=zway-opt,target=/opt/z-way-server -p 8083:8083 --device=/dev/ttyS0 --device=/dev/ttyAMA0 --name=zway zway:latest 
