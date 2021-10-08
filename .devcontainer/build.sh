#!/bin/bash

set -ex

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )"
IMAGE="giffon/charleywong_devcontainer_workspace"
TAG="${IMAGE}:$(date +%Y%m%d%H%M%S)"

cp -r "$DIR/../.haxerc" "$DIR"/../*.hxml "$DIR/../haxe_libraries" "$DIR/../package.json" "$DIR/../yarn.lock" "$DIR/workspace/"
docker build --pull -t "$TAG" "$DIR"

sed -i -e "s#${IMAGE}:[0-9]*#$TAG#g" \
    "$DIR"/docker-compose.yml \
    "$DIR"/../.github/workflows/*.yml \
    "$DIR"/../Dockerfile
