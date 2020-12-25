#!/usr/bin/env bash

set -ex

sudo chmod a+rwx node_modules
yarn

bash build-dclookup.sh
lix download

npx dts2hx @types/node @types/gtag.js fastify --noLibWrap --output lib/dts2hx
