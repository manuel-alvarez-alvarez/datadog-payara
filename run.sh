#!/bin/sh

if [ -z "$1" ]; then
    TARGET='default'
else
    TARGET=$1
fi
IMAGE="application:$TARGET"
CONTAINER="application_$TARGET"

docker build --target "$TARGET" --tag "$IMAGE" .
docker run --rm -d -p 8080:8080 --name $CONTAINER "$IMAGE"
