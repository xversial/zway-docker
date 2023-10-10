# Z-Way docker image

## Build
```sh
docker build -t zway .
```

## Run
```sh
docker container run --rm -it -p 8083:8083 --device=/dev/ttyAMA0 zway
```
