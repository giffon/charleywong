VERSION 0.6
FROM busybox:1
ARG DEVCONTAINER_IMAGE_NAME=giffon/charleywong_devcontainer_workspace
ARG LAMBDA_IMAGE_REGISTRY=932878902707.dkr.ecr.us-east-1.amazonaws.com
ARG LAMBDA_IMAGE_NAME=$LAMBDA_IMAGE_REGISTRY/serverless-charleywong-master

ARG USERNAME=vscode
ARG USER_UID=1000
ARG USER_GID=$USER_UID

image:
    ARG IMAGE
    FROM ${IMAGE}

echo:
    ARG MSG
    RUN --no-cache echo $MSG

# devcontainer:
#     COPY .devcontainer/docker-compose.yml docker-compose.yml
#     RUN grep -oE "$DEVCONTAINER_IMAGE_NAME:[a-z0-9]+" docker-compose.yml | awk -F ':' '{print $2}' | tee DEVCONTAINER_IMAGE_TAG_PREVIOUS
#     FROM +devcontainer-build \
#         --DEVCONTAINER_IMAGE_TAG_PREVIOUS="$(cat DEVCONTAINER_IMAGE_TAG_PREVIOUS)"

devcontainer-base:
    FROM DOCKERFILE .devcontainer \
        --INSTALL_ZSH="false" \
        --UPGRADE_PACKAGES="true" \
        --ENABLE_NONROOT_DOCKER="true" \
        --USE_MOBY="true" \
        --USERNAME="$USERNAME" \
        --USER_UID="$USER_UID" \
        --USER_GID="$USER_GID"

devcontainer:
    FROM +devcontainer-base

    USER $USERNAME
    WORKDIR /workspace
    COPY +node-modules-dev/node_modules node_modules
    VOLUME /workspace/node_modules
    COPY +dts2hx/dts2hx lib/dts2hx
    VOLUME /workspace/lib/dts2hx
    COPY +lix-download/haxe "$HAXESHIM_ROOT"
    RUN sed -ir 's/^__bash_prompt$/PS1="\\[\\033[0;32m\\]\\u \\[\\033[0m\\]➜ \\[\\033[1;34m\\]\\w\\[\\033[0m\\]\\$ "/' ~/.bashrc
    USER root

    ARG DEVCONTAINER_IMAGE_TAG=latest
    SAVE IMAGE --push "$DEVCONTAINER_IMAGE_NAME:$DEVCONTAINER_IMAGE_TAG" "$DEVCONTAINER_IMAGE_NAME:latest"

devcontainer-rebuild:
    RUN --no-cache date +%Y%m%d%H%M%S | tee buildtime
    BUILD \
        --platform=linux/amd64 \
        +devcontainer \
        --DEVCONTAINER_IMAGE_TAG="$(cat buildtime)"
    BUILD +devcontainer-update-refs \
        --DEVCONTAINER_IMAGE_TAG="$(cat buildtime)"

devcontainer-update-refs:
    ARG DEVCONTAINER_IMAGE_TAG
    BUILD +devcontainer-update-ref \
        --DEVCONTAINER_IMAGE_TAG="$DEVCONTAINER_IMAGE_TAG" \
        --FILE='./.devcontainer/docker-compose.yml' \
        --FILE='./.github/workflows/ci.yml' \
        --FILE='./.github/workflows/updateMeta.yml' \
        --FILE='./Dockerfile'

devcontainer-update-ref:
    ARG DEVCONTAINER_IMAGE_TAG
    ARG FILE
    COPY "$FILE" file.src
    RUN sed -e "s#$DEVCONTAINER_IMAGE_NAME:[a-z0-9]*#$DEVCONTAINER_IMAGE_NAME:$DEVCONTAINER_IMAGE_TAG#g" file.src > file.out
    SAVE ARTIFACT --keep-ts file.out $FILE AS LOCAL $FILE

lix-download:
    FROM +devcontainer-base
    USER $USERNAME
    WORKDIR /workspace
    COPY haxe_libraries haxe_libraries
    COPY .haxerc .
    RUN lix download
    SAVE ARTIFACT "$HAXESHIM_ROOT"

node-modules-prod:
    FROM +devcontainer-base
    USER $USERNAME
    WORKDIR /workspace
    COPY .haxerc package.json yarn.lock .
    COPY +lix-download/haxe "$HAXESHIM_ROOT"
    RUN yarn --production
    SAVE ARTIFACT node_modules

node-modules-dev:
    FROM +node-modules-prod
    RUN yarn
    SAVE ARTIFACT node_modules

dts2hx:
    FROM +node-modules-dev
    RUN yarn dts2hx
    SAVE ARTIFACT lib/dts2hx

entity-index-exporter:
    FROM +devcontainer
    COPY static static
    COPY lib/hxnodelibs lib/hxnodelibs
    COPY haxe_libraries haxe_libraries
    COPY src src
    COPY .haxerc exportEntityIndex.hxml .
    RUN haxe exportEntityIndex.hxml
    SAVE ARTIFACT exportEntityIndex.js

entity-index:
    FROM +devcontainer
    COPY static static
    COPY +dclookup/* .
    COPY +entity-index-exporter/exportEntityIndex.js .
    COPY data/entity data/entity
    RUN mkdir -p data/groonga
    RUN node exportEntityIndex.js
    SAVE ARTIFACT data/groonga groonga

hkbase-directory:
    FROM +devcontainer
    COPY lib/hxnodelibs lib/hxnodelibs
    COPY haxe_libraries haxe_libraries
    COPY src src
    COPY .haxerc dumpHkbaseDirectory.hxml .
    RUN haxe dumpHkbaseDirectory.hxml
    RUN \
        --mount=type=secret,id=+secrets/.envrc,target=.envrc \
        . ./.envrc \
        && node dumpHkbaseDirectory.js dump
    SAVE ARTIFACT HkbaseDirectory.json

ybm:
    FROM +devcontainer
    COPY +dclookup/* .
    COPY lib/hxnodelibs lib/hxnodelibs
    COPY haxe_libraries haxe_libraries
    COPY src src
    COPY static static
    COPY .haxerc syncYellowBlueMap.hxml .
    RUN haxe syncYellowBlueMap.hxml
    COPY data data
    RUN --mount=type=secret,id=+secrets/.envrc,target=.envrc \
        . ./.envrc \
        && \
        AWS_DEFAULT_REGION="$YBM_AWS_DEFAULT_REGION" \
        AWS_ACCESS_KEY_ID="$YBM_AWS_ACCESS_KEY_ID" \
        AWS_SECRET_ACCESS_KEY="$YBM_AWS_SECRET_ACCESS_KEY" \
        node syncYellowBlueMap.js dump
    SAVE ARTIFACT ybm

test:
    FROM +devcontainer
    COPY +dclookup/* .
    COPY lib/hxnodelibs lib/hxnodelibs
    COPY haxe_libraries haxe_libraries
    COPY src src
    COPY test test
    COPY static static
    COPY data data
    COPY .haxerc test.hxml .
    ARG TEST
    RUN haxe test.hxml $TEST

tailwind:
    FROM +devcontainer
    COPY src src
    COPY tailwind.config.js package.json .
    RUN NODE_ENV=production yarn tailwind
    SAVE ARTIFACT static/css/tailwind.css

dclookup:
    FROM +devcontainer
    COPY lib/HKAddressParser lib/HKAddressParser
    COPY babel.config.json package.json .
    RUN yarn dclookup
    SAVE ARTIFACT dclookup.js

service-worker:
    FROM +devcontainer
    COPY haxe_libraries haxe_libraries
    COPY lib/hxnodelibs lib/hxnodelibs
    COPY lib/HKAddressParser lib/HKAddressParser
    COPY lib/workbox lib/workbox
    COPY src src
    COPY .haxerc babel.config.json serviceWorker.hxml .
    RUN mkdir -p static
    RUN haxe serviceWorker.hxml
    RUN npx browserify serviceWorker.js --transform [ babelify --global ] -g [ envify --NODE_ENV production ] -g uglifyify | npx terser --compress --mangle > static/serviceWorker.bundled.js
    SAVE ARTIFACT static/serviceWorker.bundled.js

browser-script:
    FROM +service-worker
    COPY browser.hxml .
    RUN haxe browser.hxml
    RUN npx browserify browser.js -g [ envify --NODE_ENV production ] -g uglifyify | npx terser --compress --mangle > static/browser.bundled.js
    SAVE ARTIFACT static/browser.bundled.js

server-script:
    FROM +browser-script
    COPY static static
    COPY +tailwind/tailwind.css static/css/tailwind.css
    COPY +dclookup/* .
    COPY server.hxml .
    RUN haxe server.hxml
    SAVE ARTIFACT index.js

lambda-container-base:
    FROM ubuntu:focal
    RUN apt-get update \
        && apt-get install -y --no-install-recommends software-properties-common curl \
        && add-apt-repository -y universe \
        && add-apt-repository -y ppa:groonga/ppa \
        && apt-get install -y --no-install-recommends groonga groonga-token-filter-stem \
        && curl -sL https://deb.nodesource.com/setup_16.x | bash - \
        && apt-get install -y --no-install-recommends nodejs=16.* \
        #
        # Clean up
        && apt-get autoremove -y \
        && apt-get clean -y \
        && rm -rf /var/lib/apt/lists/*
    WORKDIR /workspace

lambda-container:
    FROM +lambda-container-base
    COPY +node-modules-prod/node_modules node_modules
    COPY static static
    COPY data data
    COPY +entity-index/groonga data/groonga
    COPY +ybm/* ybm
    COPY +hkbase-directory/* .
    COPY +dclookup/* .
    COPY +browser-script/* static
    COPY +service-worker/* static
    COPY +tailwind/* static/css
    COPY +server-script/* .

    ENTRYPOINT ["npx", "aws-lambda-ric"]
    CMD ["index.handler"]
    ARG LAMBDA_IMAGE_TAG=latest
    SAVE IMAGE --push "$LAMBDA_IMAGE_NAME:$LAMBDA_IMAGE_TAG" "$LAMBDA_IMAGE_NAME:latest"

lambda-container-rebuild:
    RUN --no-cache date +%Y%m%d%H%M%S | tee buildtime
    BUILD \
        --platform=linux/amd64 \
        +lambda-container \
        --LAMBDA_IMAGE_TAG="$(cat buildtime)"

deploy:
    FROM +node-modules-dev
    COPY serverless.yml .
    ARG LAMBDA_IMAGE_TAG
    ENV LAMBDA_IMAGE="$LAMBDA_IMAGE_NAME:$LAMBDA_IMAGE_TAG"
    ARG DEPLOY_STAGE
    RUN \
        --mount=type=secret,id=+secrets/.envrc,target=.envrc \
        . ./.envrc \
        && npx serverless deploy --stage "${DEPLOY_STAGE}"

ecr-login:
    LOCALLY
    RUN aws ecr get-login-password | docker login --username AWS --password-stdin "$LAMBDA_IMAGE_REGISTRY"
