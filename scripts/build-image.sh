#!/bin/bash

SplitMint_APP_NAME=$(node -p -e "require('./package.json').name")
SplitMint_VERSION=$(node -p -e "require('./package.json').version")

# we need to set dummy data for POSTGRES env vars in order for build not to fail
docker buildx build \
    -t ${SplitMint_APP_NAME}:${SplitMint_VERSION} \
    -t ${SplitMint_APP_NAME}:latest \
    .

docker image prune -f
