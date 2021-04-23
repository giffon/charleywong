#!/bin/bash

set -ex

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )"
TAG="giffon/charleywong_devcontainer_workspace:$(date +%Y%m%d%H%M%S)"

cp -r "$DIR/../.haxerc" "$DIR"/../*.hxml "$DIR/../haxe_libraries" "$DIR/../package.json" "$DIR/../yarn.lock" "$DIR/workspace/"
docker build --pull -t "$TAG" "$DIR"

yq eval ".services.workspace.image = \"$TAG\"" "$DIR/docker-compose.yml" -i
yq eval ".jobs.build.container = \"$TAG\"" "$DIR/../.github/workflows/ci.yml" -i
yq eval ".jobs.deploy.container = \"$TAG\"" "$DIR/../.github/workflows/ci.yml" -i
yq eval ".jobs.job.container = \"$TAG\"" "$DIR/../.github/workflows/updateMeta.yml" -i
