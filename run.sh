#!/bin/bash

docker container run --rm -it -p 8083:8083 --device=/dev/ttyAMA0 zway
