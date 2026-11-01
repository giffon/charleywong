# Do not use VERSION 0.7
# https://github.com/earthly/earthly/issues/2752
VERSION 0.6
ARG UBUNTU_RELEASE=jammy
FROM mcr.microsoft.com/vscode/devcontainers/base:0-$UBUNTU_RELEASE
ARG DEVCONTAINER_IMAGE_NAME_DEFAULT=ghcr.io/giffon/charleywong_devcontainer_workspace
ARG NODE_MAJOR=24

ARG USERNAME=vscode
ARG USER_UID=1000
ARG USER_GID=$USER_UID

devcontainer-library-scripts:
    RUN curl -fsSLO https://raw.githubusercontent.com/microsoft/vscode-dev-containers/main/script-library/common-debian.sh
    RUN curl -fsSLO https://raw.githubusercontent.com/microsoft/vscode-dev-containers/main/script-library/docker-debian.sh
    SAVE ARTIFACT --keep-ts *.sh AS LOCAL .devcontainer/library-scripts/

docker-compose:
    ARG TARGETARCH
    ARG VERSION=2.28.1 # https://github.com/docker/compose/releases/
    RUN curl -fsSL https://github.com/docker/compose/releases/download/v${VERSION}/docker-compose-linux-$(uname -m) -o /usr/local/bin/docker-compose \
        && chmod +x /usr/local/bin/docker-compose
    SAVE ARTIFACT /usr/local/bin/docker-compose

nodesource.gpg:
    RUN curl -fsSL https://deb.nodesource.com/gpgkey/nodesource-repo.gpg.key | gpg --dearmor -o nodesource.gpg
    SAVE ARTIFACT --keep-ts nodesource.gpg

devcontainer-base:
    ARG TARGETARCH

    # Maunally install docker-compose to avoid the following error:
    # pip seemed to fail to build package: PyYAML<6,>=3.10
    COPY +docker-compose/docker-compose /usr/local/bin/

    # Avoid warnings by switching to noninteractive
    ENV DEBIAN_FRONTEND=noninteractive

    ARG INSTALL_ZSH="false"
    ARG UPGRADE_PACKAGES="true"
    ARG ENABLE_NONROOT_DOCKER="true"
    ARG USE_MOBY="false"
    COPY .devcontainer/library-scripts/*.sh /tmp/library-scripts/
    RUN apt-get update \
        && /bin/bash /tmp/library-scripts/common-debian.sh "${INSTALL_ZSH}" "${USERNAME}" "${USER_UID}" "${USER_GID}" "${UPGRADE_PACKAGES}" "true" "true" \
        # Use Docker script from script library to set things up
        && /bin/bash /tmp/library-scripts/docker-debian.sh "${ENABLE_NONROOT_DOCKER}" "/var/run/docker-host.sock" "/var/run/docker.sock" "${USERNAME}" "${USE_MOBY}" \
        # Clean up
        && apt-get autoremove -y && apt-get clean -y && rm -rf /var/lib/apt/lists/* /tmp/library-scripts/

    # https://github.com/nodesource/distributions#installation-instructions
    COPY +nodesource.gpg/nodesource.gpg /etc/apt/keyrings/nodesource.gpg
    RUN echo "deb [signed-by=/etc/apt/keyrings/nodesource.gpg] https://deb.nodesource.com/node_$NODE_MAJOR.x nodistro main" | tee /etc/apt/sources.list.d/nodesource.list

    # Configure apt and install packages
    RUN apt-get update \
        && apt-get install -y --no-install-recommends apt-utils dialog 2>&1 \
        #
        # Verify git and needed tools are installed
        && apt-get install -y \
            iproute2 \
            procps \
            sudo \
            bash-completion \
            build-essential \
            pkg-config \
            cmake \
            autoconf \
            libtool \
            unzip \
            curl \
            python3 \
            python3-virtualenv \
            software-properties-common \
            libnss3-tools \
            direnv \
            nodejs=$NODE_MAJOR.* \
        && echo 'eval "$(direnv hook bash)"' >> /etc/bash.bashrc \
        && add-apt-repository -y universe \
        && add-apt-repository -y ppa:git-core/ppa \
        && apt-get install -y git \
        && npm config --global set update-notifier false \
        && npm install -g yarn \
        && yarn global add lix --prefix /usr/local \
        # Install haxe
        && add-apt-repository ppa:haxe/haxe4.3 -y \
        && apt-get update \
        && apt-get install -qqy --no-install-recommends \
            haxe=1:4.3.* \
        #
        # Clean up
        && apt-get autoremove -y \
        && apt-get clean -y \
        && rm -rf /var/lib/apt/lists/*

    # https://github.com/wagoodman/dive
    ARG DIVE_VERSION=0.10.0
    RUN if [ "$TARGETARCH" = "amd64" ]; then \
            curl -fsSL "https://github.com/wagoodman/dive/releases/download/v${DIVE_VERSION}/dive_${DIVE_VERSION}_linux_amd64.deb" -o dive.deb \
                && apt install ./dive.deb \
                && rm -rf ./dive.deb; \
        fi
    ENV YARN_CACHE_FOLDER=/yarn
    RUN mkdir -m 777 "$YARN_CACHE_FOLDER"
    ENV HAXESHIM_ROOT=/haxe
    RUN mkdir -m 777 "$HAXESHIM_ROOT"
    RUN mkdir -m 777 "/workspace"

    # Expose pip installed binaries
    ENV PATH="/home/${USERNAME}/.local/bin:${PATH}"

    # Switch back to dialog for any ad-hoc use of apt-get
    ENV DEBIAN_FRONTEND=

    # Setting the ENTRYPOINT to docker-init.sh will configure non-root access 
    # to the Docker socket. The script will also execute CMD as needed.
    ENTRYPOINT [ "/usr/local/share/docker-init.sh" ]
    CMD [ "sleep", "infinity" ]

    SAVE IMAGE --cache-hint

# RUN /aws/install
awscli:
    RUN cd / \
        && curl -fsSL "https://awscli.amazonaws.com/awscli-exe-linux-$(uname -m).zip" -o "awscliv2.zip" \
        && unzip -qq awscliv2.zip \
        && rm awscliv2.zip
    SAVE ARTIFACT aws

# COPY +tofu/tofu /usr/local/bin/
tofu:
    ARG TARGETARCH
    ARG VERSION=1.13.2 # https://github.com/opentofu/opentofu/releases
    RUN curl -fsSL -o tofu.zip "https://github.com/opentofu/opentofu/releases/download/v${VERSION}/tofu_${VERSION}_linux_${TARGETARCH}.zip" \
        && unzip -qq tofu.zip tofu \
        && mv ./tofu /usr/local/bin/ \
        && rm tofu.zip
    SAVE ARTIFACT /usr/local/bin/tofu

# COPY +earthly/earthly /usr/local/bin/
# RUN earthly bootstrap --no-buildkit --with-autocomplete
earthly:
    ARG TARGETARCH
    ARG VERSION=0.8.16 # https://github.com/earthly/earthly/releases
    RUN curl -fsSL "https://github.com/earthly/earthly/releases/download/v${VERSION}/earthly-linux-${TARGETARCH}" -o /usr/local/bin/earthly \
        && chmod +x /usr/local/bin/earthly
    SAVE ARTIFACT /usr/local/bin/earthly

devcontainer:
    FROM +devcontainer-base

    # AWS cli
    COPY +awscli/aws /aws
    RUN /aws/install

    # OpenTofu
    COPY +tofu/tofu /usr/local/bin/

    # Install earthly
    COPY +earthly/earthly /usr/local/bin/
    RUN earthly bootstrap --no-buildkit --with-autocomplete

    USER $USERNAME

    # Do not show git branch in bash prompt because it's slow
    # https://github.com/microsoft/vscode-dev-containers/issues/1196#issuecomment-988388658
    RUN git config --global codespaces-theme.hide-status 1

    # Config direnv
    COPY --chown=$USER_UID:$USER_GID .devcontainer/direnv.toml /home/$USERNAME/.config/direnv/config.toml

    WORKDIR /workspace
    COPY +hkgs-dataset-district-boundary/DCD.json data/hkgs/DCD.json
    VOLUME /workspace/data/hkgs
    COPY +node-modules-dev/node_modules node_modules
    VOLUME /workspace/node_modules
    COPY +dts2hx/dts2hx lib/dts2hx
    VOLUME /workspace/lib/dts2hx
    COPY +lix-download/haxe "$HAXESHIM_ROOT"

    # Config bash completion
    RUN echo 'complete -C tofu tofu' >> ~/.bashrc
    RUN echo "complete -C '/usr/local/bin/aws_completer' aws" >> ~/.bashrc

    USER root
    ARG GIT_SHA
    ENV GIT_SHA="$GIT_SHA"
    ARG IMAGE_NAME="$DEVCONTAINER_IMAGE_NAME_DEFAULT"
    ARG IMAGE_TAG_1="master"
    ARG IMAGE_TAG_2="master"
    IF [ "$IMAGE_TAG_1" = "$IMAGE_TAG_2" ]
        SAVE IMAGE --push "$IMAGE_NAME:$IMAGE_TAG_1"
    ELSE
        SAVE IMAGE --push "$IMAGE_NAME:$IMAGE_TAG_1" "$IMAGE_NAME:$IMAGE_TAG_2"
    END

devcontainer-ci:
    ARG --required GIT_REF_NAME
    ARG --required GIT_SHA
    RUN echo $GIT_REF_NAME | sed 's/[^A-Za-z0-9\-\.]/_/g' | tee image_tag
    BUILD +devcontainer \ 
        --IMAGE_TAG_1="$(cat image_tag)" \
        --IMAGE_TAG_2="$GIT_SHA" \
        --GIT_SHA="$GIT_SHA"

devcontainer-rebuild:
    RUN --no-cache date +%Y%m%d%H%M%S | tee buildtime
    ARG DEVCONTAINER_IMAGE_NAME="$DEVCONTAINER_IMAGE_NAME_DEFAULT"
    BUILD \
        --platform=linux/amd64 \
        +devcontainer \
        --DEVCONTAINER_IMAGE_NAME="$DEVCONTAINER_IMAGE_NAME" \
        --DEVCONTAINER_IMAGE_TAG="$(cat buildtime)"
    BUILD +devcontainer-update-refs \
        --DEVCONTAINER_IMAGE_NAME="$DEVCONTAINER_IMAGE_NAME" \
        --DEVCONTAINER_IMAGE_TAG="$(cat buildtime)"

devcontainer-update-refs:
    ARG --required DEVCONTAINER_IMAGE_NAME
    ARG --required DEVCONTAINER_IMAGE_TAG
    BUILD +devcontainer-update-ref \
        --DEVCONTAINER_IMAGE_NAME="$DEVCONTAINER_IMAGE_NAME" \
        --DEVCONTAINER_IMAGE_TAG="$DEVCONTAINER_IMAGE_TAG" \
        --FILE='./.devcontainer/docker-compose.yml' \
        --FILE='./.github/workflows/ci-master.yml' \
        --FILE='./.github/workflows/ci-production.yml' \
        --FILE='./.github/workflows/updateMeta.yml'

devcontainer-update-ref:
    ARG --required DEVCONTAINER_IMAGE_NAME
    ARG --required DEVCONTAINER_IMAGE_TAG
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
    RUN mkdir -p "$HAXESHIM_ROOT/versions/$(jq -r .version .haxerc)"
    RUN ln -s /usr/bin/haxe "$HAXESHIM_ROOT/versions/$(jq -r .version .haxerc)/haxe"
    RUN ln -s /usr/bin/haxelib "$HAXESHIM_ROOT/versions/$(jq -r .version .haxerc)/haxelib"
    RUN ln -s /usr/share/haxe/std "$HAXESHIM_ROOT/versions/$(jq -r .version .haxerc)/std"
    RUN lix download
    SAVE ARTIFACT "$HAXESHIM_ROOT"
    SAVE IMAGE --cache-hint

node-modules-prod:
    FROM +devcontainer-base
    USER $USERNAME
    WORKDIR /workspace
    COPY .haxerc package.json yarn.lock .
    COPY +lix-download/haxe "$HAXESHIM_ROOT"
    RUN yarn --production
    SAVE ARTIFACT node_modules
    SAVE IMAGE --cache-hint

node-modules-dev:
    FROM +node-modules-prod
    RUN yarn
    SAVE ARTIFACT node_modules
    SAVE IMAGE --cache-hint

dts2hx:
    FROM +node-modules-dev
    # dts2hx prints thousands of TypeScript parse errors that seem to get the step killed in CI; only show the log on failure
    RUN npx dts2hx @types/node cross-fetch @types/chrome @types/which-polygon abort-controller fastify sitemap --noLibWrap --useSystemHaxe --output lib/dts2hx > /tmp/dts2hx.log 2>&1 || (cat /tmp/dts2hx.log; exit 1)
    RUN find lib/dts2hx -name "*.hx" -exec sed -i s/ajv.lib.ajv.[A-Za-z0-9]*/Dynamic/g {} \;
    # Remove the incorrect numbers of type params errors
    RUN perl -i -pe 's/FastifyServerOptions(?!<[^,>]+,[^,>]+>)(<.+?>)?/Dynamic/g' lib/dts2hx/fastify/FastifyServerOptions.hx
    RUN perl -i -pe 's/FastifyHttpsOptions(?!<[^,>]+,[^,>]+>)(<.+?>)?/Dynamic/g' lib/dts2hx/fastify/FastifyHttpsOptions.hx
    RUN perl -i -pe 's/FastifyHttpOptions(?!<[^,>]+,[^,>]+>)(<.+?>)?/Dynamic/g' lib/dts2hx/fastify/FastifyHttpOptions.hx
    SAVE ARTIFACT lib/dts2hx AS LOCAL lib/dts2hx
    SAVE IMAGE --cache-hint

hkbase-directory:
    FROM +devcontainer
    COPY lib/hxnodelibs lib/hxnodelibs
    COPY haxe_libraries haxe_libraries
    COPY src src
    COPY .haxerc dumpHkbaseDirectory.hxml .
    RUN haxe dumpHkbaseDirectory.hxml
    RUN \
        --mount=type=secret,id=+secrets/envrc,target=.envrc \
        . ./.envrc \
        && OPENSSL_CONF=/dev/null node dumpHkbaseDirectory.js dump
    SAVE ARTIFACT HkbaseDirectory.json

ybm-download:
    FROM +devcontainer
    COPY lib/hxnodelibs lib/hxnodelibs
    COPY haxe_libraries haxe_libraries
    COPY src src
    COPY static static
    COPY .haxerc syncYellowBlueMap.hxml .
    RUN haxe syncYellowBlueMap.hxml
    COPY data data
    ARG CACHE_KEY
    RUN --mount=type=secret,id=+secrets/envrc,target=.envrc \
        . ./.envrc \
        && \
        AWS_DEFAULT_REGION="$YBM_AWS_DEFAULT_REGION" \
        AWS_ACCESS_KEY_ID="$YBM_AWS_ACCESS_KEY_ID" \
        AWS_SECRET_ACCESS_KEY="$YBM_AWS_SECRET_ACCESS_KEY" \
        node syncYellowBlueMap.js dump
    SAVE ARTIFACT ybm

ybm:
    FROM +ybm-download --CACHE_KEY="$(date +%Y%m%d)"
    SAVE ARTIFACT --keep-ts ybm AS LOCAL ./ybm

ybm-pretty:
    FROM alpine:3.17
    RUN apk update; apk add moreutils jq
    COPY --keep-ts +ybm/ybm ybm
    RUN find ybm -name '*.json' -exec sh -c 'jq . {} | sponge {}' \;
    SAVE ARTIFACT --keep-ts ybm AS LOCAL ./ybm

hkgs-dataset-district-boundary:
    WORKDIR /tmp
    # District Boundary (Home Affairs Department), in EPSG:2326
    # https://portal.csdi.gov.hk/geoportal/?datasetId=had_rcd_1634523272907_75218
    RUN curl -fsSL "https://portal.csdi.gov.hk/server/services/common/had_rcd_1634523272907_75218/MapServer/WFSServer?service=wfs&request=GetFeature&typenames=DCD&outputFormat=geojson&srsName=EPSG:2326" -o DCD.json
    SAVE ARTIFACT --keep-ts DCD.json AS LOCAL ./data/hkgs/DCD.json
    SAVE IMAGE --cache-hint

exportSpreadsheet.js:
    FROM +devcontainer
    COPY lib/hxnodelibs lib/hxnodelibs
    COPY haxe_libraries haxe_libraries
    COPY src src
    COPY static static
    COPY .haxerc exportSpreadsheet.hxml .
    COPY --keep-ts data/entity data/entity
    ARG HAXE_ARGS
    RUN --mount=type=secret,id=+secrets/envrc,target=.envrc \
        . ./.envrc \
        && \
        AWS_DEFAULT_REGION="$YBM_AWS_DEFAULT_REGION" \
        AWS_ACCESS_KEY_ID="$YBM_AWS_ACCESS_KEY_ID" \
        AWS_SECRET_ACCESS_KEY="$YBM_AWS_SECRET_ACCESS_KEY" \
        haxe $HAXE_ARGS exportSpreadsheet.hxml
    SAVE ARTIFACT exportSpreadsheet.js

exportSpreadsheet:
    # Somehow +devcontainer doesn't work:
    # Error: error:25066067:DSO support routines:dlfcn_load:could not load the shared library
    FROM node:$NODE_MAJOR-bullseye
    RUN apt-get update && apt-get install -yq \
            bash-completion \
            build-essential \
            pkg-config \
            cmake \
            autoconf \
            libtool \
        #
        # Clean up
        && apt-get autoremove -y \
        && apt-get clean -y \
        && rm -rf /var/lib/apt/lists/*
    WORKDIR $WORKDIR
    COPY .haxerc package.json yarn.lock .
    COPY +lix-download/haxe "$HAXESHIM_ROOT"
    RUN yarn
    COPY +awscli/aws /aws
    RUN /aws/install
    # COPY +node-modules-dev/node_modules node_modules
    COPY +exportSpreadsheet.js/exportSpreadsheet.js .
    COPY static static
    COPY --keep-ts data/entity data/entity
    RUN --no-cache \
        --mount=type=secret,id=+secrets/envrc,target=.envrc \
        . ./.envrc \
        && \
        AWS_DEFAULT_REGION="$YBM_AWS_DEFAULT_REGION" \
        AWS_ACCESS_KEY_ID="$YBM_AWS_ACCESS_KEY_ID" \
        AWS_SECRET_ACCESS_KEY="$YBM_AWS_SECRET_ACCESS_KEY" \
        node exportSpreadsheet.js
    SAVE ARTIFACT --keep-ts data/entity AS LOCAL data/entity

test-build:
    BUILD +service-worker
    BUILD +browser-script
    BUILD +server-script
    BUILD +chrome-extension
    BUILD +syncFacebook.js
    BUILD +git.js
    BUILD +static-site.js
    BUILD +worker.js
    BUILD +profilePic.js
    # BUILD +exportSpreadsheet.js

test:
    FROM +devcontainer
    COPY lib/hxnodelibs lib/hxnodelibs
    COPY haxe_libraries haxe_libraries
    COPY src src
    COPY test test
    COPY static static
    COPY data data
    COPY .haxerc test.hxml .
    ARG TEST
    RUN --no-cache haxe test.hxml $TEST

tailwind:
    FROM +devcontainer
    COPY src src
    COPY tailwind.config.js package.json .
    RUN NODE_ENV=production yarn tailwind
    SAVE ARTIFACT static/css/tailwind.css

service-worker:
    FROM +devcontainer
    COPY haxe_libraries haxe_libraries
    COPY lib/hxnodelibs lib/hxnodelibs
    COPY lib/workbox lib/workbox
    COPY src src
    COPY .haxerc esbuild.mjs serviceWorker.hxml .
    RUN mkdir -p static
    RUN haxe serviceWorker.hxml
    SAVE ARTIFACT static/serviceWorker.bundled.js

browser-script:
    FROM +service-worker
    COPY browser.hxml .
    RUN haxe browser.hxml
    SAVE ARTIFACT static/browser.bundled.js

server-script:
    FROM +browser-script
    COPY static static
    COPY +tailwind/tailwind.css static/css/tailwind.css
    COPY server.hxml .
    RUN haxe server.hxml
    SAVE ARTIFACT index.js

static-site.js:
    FROM +browser-script
    COPY static static
    # static resources are fingerprinted at compile time, so put the final ones in place before compiling
    COPY +browser-script/browser.bundled.js static/
    COPY +service-worker/serviceWorker.bundled.js static/
    COPY +tailwind/tailwind.css static/css/tailwind.css
    COPY staticSite.hxml .
    RUN haxe staticSite.hxml
    SAVE ARTIFACT staticSite.js

# The words of jieba's dictionary that occur in the entity data, used by the search of the static site
search-dict:
    FROM +static-site.js
    COPY +hkbase-directory/HkbaseDirectory.json .
    COPY data/entity data/entity
    RUN node staticSite.js dict
    SAVE ARTIFACT data/search/jieba-dict.txt AS LOCAL data/search/jieba-dict.txt

# The static site (site) and the data of the Worker (worker)
static-site:
    FROM +static-site.js
    COPY +hkbase-directory/HkbaseDirectory.json .
    COPY data/entity data/entity
    COPY +search-dict/jieba-dict.txt data/search/jieba-dict.txt
    ARG PROFILE_PIC_ORIGIN=https://img.charleywong.info
    RUN node staticSite.js build --profile-pic-origin "$PROFILE_PIC_ORIGIN"
    SAVE ARTIFACT dist/site site
    SAVE ARTIFACT dist/worker worker

worker.js:
    FROM +devcontainer
    COPY haxe_libraries haxe_libraries
    COPY src src
    COPY .haxerc worker.hxml .
    RUN mkdir -p worker && haxe worker.hxml
    SAVE ARTIFACT worker/charleywong.js

wrangler:
    FROM +devcontainer
    ARG VERSION=4.156.0 # https://github.com/cloudflare/workers-sdk/releases
    RUN npm install -g "wrangler@$VERSION"

# The Worker with its static assets and data, ready for `wrangler deploy`
worker:
    FROM +wrangler
    COPY wrangler.jsonc .
    COPY worker/index.js worker/
    COPY +worker.js/charleywong.js worker/
    COPY +static-site/site dist/site
    COPY +static-site/worker dist/worker

# Deploy the site to Cloudflare, e.g. `earthly --secret-file envrc=.envrc +deploy --DEPLOY_STAGE=master`
# .envrc needs CLOUDFLARE_API_TOKEN, and the GOOGLE_* variables for +hkbase-directory.
deploy:
    FROM +worker
    ARG --required DEPLOY_STAGE
    RUN --no-cache \
        --mount=type=secret,id=+secrets/envrc,target=.envrc \
        . ./.envrc \
        && wrangler deploy --env "$DEPLOY_STAGE"

profilePic.js:
    FROM +devcontainer
    COPY lib/hxnodelibs lib/hxnodelibs
    COPY haxe_libraries haxe_libraries
    COPY src src
    COPY static static
    COPY .haxerc profilePic.hxml .
    RUN haxe profilePic.hxml
    SAVE ARTIFACT profilePic.js

# The entity profile pics (img), served by the assets-only Worker of img/wrangler.jsonc.
# The existing pics are downloaded from PROFILE_PIC_ORIGIN, and only the missing ones are rendered.
# Use --FORCE=true to re-render all of them, e.g. to pick up profile pic changes.
profile-pics:
    FROM +wrangler
    COPY static static
    COPY data/entity data/entity
    COPY +profilePic.js/profilePic.js .
    COPY img/wrangler.jsonc img/
    ARG PROFILE_PIC_ORIGIN=https://img.charleywong.info
    ARG FORCE=false
    RUN --no-cache \
        if [ "$FORCE" = "true" ]; then \
            node profilePic.js --force; \
        else \
            node profilePic.js --from "$PROFILE_PIC_ORIGIN"; \
        fi
    SAVE ARTIFACT dist/img img

# Deploy the profile pics to Cloudflare. They rarely change, so this isn't part of the CI.
deploy-profile-pics:
    FROM +profile-pics
    RUN --no-cache \
        --mount=type=secret,id=+secrets/envrc,target=.envrc \
        . ./.envrc \
        && cd img && wrangler deploy

chrome-extension:
    FROM +devcontainer
    COPY haxe_libraries haxe_libraries
    COPY lib/hxnodelibs lib/hxnodelibs
    COPY lib/workbox lib/workbox
    COPY src src
    COPY .haxerc esbuild.mjs chrome-extension.hxml .
    RUN mkdir -p chrome
    RUN haxe chrome-extension.hxml
    SAVE ARTIFACT --keep-ts chrome/*.js AS LOCAL ./chrome/

ghcr-login:
    LOCALLY
    RUN echo "$GITHUB_CR_PAT" | docker login ghcr.io -u "$GITHUB_USERNAME" --password-stdin

waybackpy:
    FROM python:3.9
    RUN pip install waybackpy==2.4.4

wayback-save:
    FROM +waybackpy
    ARG --required URL
    RUN waybackpy --save --url "$URL" --user_agent "charleywong"

syncFacebook.js:
    FROM +devcontainer
    COPY lib/hxnodelibs lib/hxnodelibs
    COPY haxe_libraries haxe_libraries
    COPY src src
    COPY static static
    COPY .haxerc syncFacebook.hxml package.json yarn.lock .
    RUN haxe syncFacebook.hxml
    SAVE ARTIFACT syncFacebook.js

syncFacebook:
    FROM +devcontainer
    COPY .git .git
    RUN git checkout -- . && rm -r data
    COPY data data
    COPY +syncFacebook.js/* .
    RUN --no-cache \
        --mount=type=secret,id=+secrets/envrc,target=.envrc \
        . ./.envrc \
        && node syncFacebook.js updateMeta
    SAVE ARTIFACT --keep-ts data/entity/*.json AS LOCAL ./data/entity/

git.js:
    FROM +devcontainer
    COPY haxe_libraries haxe_libraries
    COPY src src
    COPY .haxerc .
    RUN haxe --class-path src --library hxnodejs --library hxLINQ --main charleywong.Git --dce full --js git.js
    SAVE ARTIFACT --keep-ts git.js AS LOCAL git.js
