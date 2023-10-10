#!/bin/bash

docker container run --rm -d -it --mount source=zway-opt,target=/opt/z-way-server -p 8083:8083 --device=/dev/ttyAMA0 zway:latest
