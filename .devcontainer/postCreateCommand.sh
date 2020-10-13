#!/usr/bin/env bash

set -ex

python3 -m virtualenv -p /usr/bin/python3.7 ~/venv

echo "source ~/venv/bin/activate" >> ~/.bashrc
bash -ic "pip3 install -r requirements.txt"

sudo chmod a+rwx node_modules
yarn

bash build-dclookup.sh
lix download

npx dts2hx @types/gtag.js --noLibWrap --output lib/dts2hx
