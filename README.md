# Z-Way docker image

## Build and Run
```sh
chmod +x ./build.sh ./run.sh && ./build.sh && ./run.sh
```

## Build
```sh
docker build -t zway .
```

## Run
```sh
docker container run --rm -it --mount source=zway-opt,target=/opt/z-way-server -p 8083:8083 --device=/dev/ttyAMA0 zway
```

## Update
```sh
git fetch origin master && git reset --hard origin/master && chmod +x ./build.sh ./run.sh
```
