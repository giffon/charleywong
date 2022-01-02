VERSION 0.6
ARG UBUNTU_RELEASE=focal
FROM mcr.microsoft.com/vscode/devcontainers/base:0-$UBUNTU_RELEASE
ARG DEVCONTAINER_IMAGE_NAME_DEFAULT=ghcr.io/giffon/charleywong_devcontainer_workspace
ARG LAMBDA_IMAGE_REGISTRY=932878902707.dkr.ecr.us-east-1.amazonaws.com
ARG LAMBDA_IMAGE_NAME_MASTER=$LAMBDA_IMAGE_REGISTRY/serverless-charleywong-master
ARG LAMBDA_IMAGE_NAME_PRODUCTION=$LAMBDA_IMAGE_REGISTRY/serverless-charleywong-production

ARG USERNAME=vscode
ARG USER_UID=1000
ARG USER_GID=$USER_UID

image:
    ARG IMAGE
    FROM ${IMAGE}

echo:
    ARG MSG
    RUN --no-cache echo $MSG

devcontainer-base:
    ARG TARGETARCH

    # Avoid warnings by switching to noninteractive
    ENV DEBIAN_FRONTEND=noninteractive

    ARG INSTALL_ZSH="false"
    ARG UPGRADE_PACKAGES="true"
    ARG ENABLE_NONROOT_DOCKER="true"
    ARG USE_MOBY="true"
    COPY .devcontainer/library-scripts/*.sh /tmp/library-scripts/
    RUN apt-get update \
        && /bin/bash /tmp/library-scripts/common-debian.sh "${INSTALL_ZSH}" "${USERNAME}" "${USER_UID}" "${USER_GID}" "${UPGRADE_PACKAGES}" "true" "true" \
        # Use Docker script from script library to set things up
        && /bin/bash /tmp/library-scripts/docker-debian.sh "${ENABLE_NONROOT_DOCKER}" "/var/run/docker-host.sock" "/var/run/docker.sock" "${USERNAME}" \
        # Clean up
        && apt-get autoremove -y && apt-get clean -y && rm -rf /var/lib/apt/lists/* /tmp/library-scripts/

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
        && echo 'eval "$(direnv hook bash)"' >> /etc/bash.bashrc \
        && add-apt-repository -y universe \
        && add-apt-repository -y ppa:groonga/ppa \
        && apt-get install -y groonga libgroonga-dev groonga-bin groonga-tokenizer-mecab groonga-token-filter-stem groonga-normalizer-mysql \
        && curl -sL https://deb.nodesource.com/setup_16.x | bash - \
        && apt-get install -y nodejs=16.* \
        && add-apt-repository -y ppa:git-core/ppa \
        && apt-get install -y git \
        && curl -fsSL https://apt.releases.hashicorp.com/gpg | apt-key add - \
        && npm install -g yarn \
        && yarn global add lix --prefix /usr/local \
        #
        # Clean up
        && apt-get autoremove -y \
        && apt-get clean -y \
        && rm -rf /var/lib/apt/lists/*

    # https://github.com/wagoodman/dive
    IF [ "$TARGETARCH" = "amd64" ]
        ARG DIVE_VERSION=0.10.0
        RUN curl -fsSL "https://github.com/wagoodman/dive/releases/download/v${DIVE_VERSION}/dive_${DIVE_VERSION}_linux_amd64.deb" -o dive.deb \
            && apt install ./dive.deb \
            && rm -rf ./dive.deb
    END

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

# RUN /aws/install
awscli:
    FROM +devcontainer-base
    RUN cd / \
        && curl -fsSL "https://awscli.amazonaws.com/awscli-exe-linux-$(uname -m).zip" -o "awscliv2.zip" \
        && unzip -qq awscliv2.zip \
        && rm awscliv2.zip
    SAVE ARTIFACT aws

# COPY +tfenv/tfenv /tfenv
# RUN ln -s /tfenv/bin/* /usr/local/bin
tfenv:
    FROM +devcontainer-base
    RUN git clone --depth 1 https://github.com/tfutils/tfenv.git /tfenv
    SAVE ARTIFACT /tfenv

# COPY +terraform-ls/terraform-ls /usr/local/bin/
terraform-ls:
    ARG --required TARGETARCH
    ARG TERRAFORM_LS_VERSION=0.25.0
    RUN curl -fsSL -o terraform-ls.zip https://github.com/hashicorp/terraform-ls/releases/download/v${TERRAFORM_LS_VERSION}/terraform-ls_${TERRAFORM_LS_VERSION}_linux_${TARGETARCH}.zip \
        && unzip -qq terraform-ls.zip \
        && mv ./terraform-ls /usr/local/bin/ \
        && rm terraform-ls.zip
    SAVE ARTIFACT /usr/local/bin/terraform-ls

terraform:
    FROM +tfenv
    RUN ln -s /tfenv/bin/* /usr/local/bin
    ARG --required TERRAFORM_VERSION
    RUN tfenv install "$TERRAFORM_VERSION"
    RUN tfenv use "$TERRAFORM_VERSION"

# COPY +earthly/earthly /usr/local/bin/
# RUN earthly bootstrap --no-buildkit --with-autocomplete
earthly:
    FROM +devcontainer-base
    ARG --required TARGETARCH
    RUN curl -fsSL https://github.com/earthly/earthly/releases/download/v0.6.2/earthly-linux-${TARGETARCH} -o /usr/local/bin/earthly \
        && chmod +x /usr/local/bin/earthly
    SAVE ARTIFACT /usr/local/bin/earthly

devcontainer:
    FROM +devcontainer-base

    # AWS cli
    COPY +awscli/aws /aws
    RUN /aws/install

    # tfenv
    COPY +tfenv/tfenv /tfenv
    RUN ln -s /tfenv/bin/* /usr/local/bin/
    COPY --chown=$USER_UID:$USER_GID .terraform-version /home/$USERNAME/
    RUN tfenv install "$(</home/$USERNAME/.terraform-version)"
    RUN tfenv use "$(</home/$USERNAME/.terraform-version)"
    COPY +terraform-ls/terraform-ls /usr/local/bin/

    # Install earthly
    COPY +earthly/earthly /usr/local/bin/
    RUN earthly bootstrap --no-buildkit --with-autocomplete

    USER $USERNAME

    # Config direnv
    COPY --chown=$USER_UID:$USER_GID .devcontainer/direnv.toml /home/$USERNAME/.config/direnv/config.toml

    WORKDIR /workspace
    COPY +node-modules-dev/node_modules node_modules
    VOLUME /workspace/node_modules
    COPY +dts2hx/dts2hx lib/dts2hx
    VOLUME /workspace/lib/dts2hx
    COPY +lix-download/haxe "$HAXESHIM_ROOT"
    RUN sed -ir 's/^__bash_prompt$/PS1="\\[\\033[0;32m\\]\\u \\[\\033[0m\\]➜ \\[\\033[1;34m\\]\\w\\[\\033[0m\\]\\$ "/' ~/.bashrc

    # Config bash completion
    RUN echo 'complete -C terraform terraform' >> ~/.bashrc
    RUN echo "complete -C '/usr/local/bin/aws_completer' aws" >> ~/.bashrc

    USER root

    ARG DEVCONTAINER_IMAGE_NAME="$DEVCONTAINER_IMAGE_NAME_DEFAULT"
    ARG DEVCONTAINER_IMAGE_TAG=latest
    SAVE IMAGE --push "$DEVCONTAINER_IMAGE_NAME:$DEVCONTAINER_IMAGE_TAG" "$DEVCONTAINER_IMAGE_NAME:latest"

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
    COPY +hkbase-directory/* .
    COPY +entity-index-exporter/exportEntityIndex.js .
    COPY data/entity data/entity
    RUN mkdir -p data/groonga
    RUN node exportEntityIndex.js
    RUN chmod a+r data/groonga/*
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

ybm-download:
    FROM +devcontainer
    COPY +dclookup/* .
    COPY lib/hxnodelibs lib/hxnodelibs
    COPY haxe_libraries haxe_libraries
    COPY src src
    COPY static static
    COPY .haxerc syncYellowBlueMap.hxml .
    RUN haxe syncYellowBlueMap.hxml
    COPY data data
    ARG CACHE_KEY
    RUN --mount=type=secret,id=+secrets/.envrc,target=.envrc \
        . ./.envrc \
        && \
        AWS_DEFAULT_REGION="$YBM_AWS_DEFAULT_REGION" \
        AWS_ACCESS_KEY_ID="$YBM_AWS_ACCESS_KEY_ID" \
        AWS_SECRET_ACCESS_KEY="$YBM_AWS_SECRET_ACCESS_KEY" \
        node syncYellowBlueMap.js dump
    SAVE ARTIFACT ybm

ybm:
    FROM +ybm-download --CACHE_KEY="$(date +%Y%m%d)"
    SAVE ARTIFACT ybm

exportSpreadsheet:
    FROM +devcontainer
    COPY +dclookup/* .
    COPY lib/hxnodelibs lib/hxnodelibs
    COPY haxe_libraries haxe_libraries
    COPY src src
    COPY static static
    COPY .haxerc exportSpreadsheet.hxml .
    COPY --keep-ts data/entity data/entity
    ARG HAXE_ARGS
    RUN --mount=type=secret,id=+secrets/.envrc,target=.envrc \
        . ./.envrc \
        && \
        AWS_DEFAULT_REGION="$YBM_AWS_DEFAULT_REGION" \
        AWS_ACCESS_KEY_ID="$YBM_AWS_ACCESS_KEY_ID" \
        AWS_SECRET_ACCESS_KEY="$YBM_AWS_SECRET_ACCESS_KEY" \
        haxe $HAXE_ARGS exportSpreadsheet.hxml
    SAVE ARTIFACT --keep-ts data/entity AS LOCAL data/entity

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

chrome-extension:
    FROM +devcontainer
    COPY haxe_libraries haxe_libraries
    COPY lib/hxnodelibs lib/hxnodelibs
    COPY lib/HKAddressParser lib/HKAddressParser
    COPY lib/workbox lib/workbox
    COPY src src
    COPY .haxerc babel.config.json chrome-extension.hxml .
    RUN mkdir -p chrome
    RUN haxe chrome-extension.hxml
    SAVE ARTIFACT --keep-ts chrome/*.js AS LOCAL ./chrome/

lambda-container-base:
    FROM ubuntu:$UBUNTU_RELEASE
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
    ARG LAMBDA_IMAGE_NAME=$LAMBDA_IMAGE_NAME_MASTER
    ARG LAMBDA_IMAGE_TAG=latest
    SAVE IMAGE --push "$LAMBDA_IMAGE_NAME:$LAMBDA_IMAGE_TAG" "$LAMBDA_IMAGE_NAME:latest"

aws-lambda-rie:
    FROM +devcontainer
    RUN curl -fsSL https://github.com/aws/aws-lambda-runtime-interface-emulator/releases/latest/download/aws-lambda-rie -o aws-lambda-rie \
        && chmod +x aws-lambda-rie
    SAVE ARTIFACT aws-lambda-rie

lambda-container-rie:
    ARG LAMBDA_IMAGE_TAG=latest
    FROM +lambda-container --LAMBDA_IMAGE_TAG="$LAMBDA_IMAGE_TAG"
    COPY +aws-lambda-rie/aws-lambda-rie /usr/local/bin/aws-lambda-rie
    ENTRYPOINT ["aws-lambda-rie", "npx", "aws-lambda-ric"]
    ARG LAMBDA_IMAGE_NAME=$LAMBDA_IMAGE_NAME_MASTER
    SAVE IMAGE "${LAMBDA_IMAGE_NAME}:${LAMBDA_IMAGE_TAG}-rie"

lambda-container-rebuild:
    RUN --no-cache date +%Y%m%d%H%M%S | tee buildtime
    BUILD \
        --platform=linux/amd64 \
        +lambda-container \
        --LAMBDA_IMAGE_TAG="$(cat buildtime)"

lambda-container-run:
    LOCALLY
    ARG LAMBDA_IMAGE_NAME=$LAMBDA_IMAGE_NAME_MASTER
    ARG LAMBDA_IMAGE_TAG=latest
    WITH DOCKER --load=+lambda-container-rie
        RUN docker run \
            --rm \
            -p 9000:8080 \
            -e GOOGLE_CLIENT_EMAIL="$GOOGLE_CLIENT_EMAIL" \
            -e GOOGLE_PRIVATE_KEY="$GOOGLE_PRIVATE_KEY" \
            -e FACEBOOK_TOKEN="$FACEBOOK_TOKEN" \
            "${LAMBDA_IMAGE_NAME}:${LAMBDA_IMAGE_TAG}-rie"
    END

deploy:
    FROM +devcontainer
    COPY serverless.yml .
    ARG LAMBDA_IMAGE_NAME=$LAMBDA_IMAGE_NAME_MASTER
    ARG --required LAMBDA_IMAGE_TAG
    ENV LAMBDA_IMAGE="$LAMBDA_IMAGE_NAME:$LAMBDA_IMAGE_TAG"
    ARG --required DEPLOY_STAGE
    RUN \
        --mount=type=secret,id=+secrets/.envrc,target=.envrc \
        . ./.envrc \
        && npx serverless deploy --stage "${DEPLOY_STAGE}"

ghcr-login:
    LOCALLY
    RUN echo "$GITHUB_CR_PAT" | docker login ghcr.io -u "$GITHUB_USERNAME" --password-stdin

ecr-login:
    LOCALLY
    RUN aws ecr get-login-password | docker login --username AWS --password-stdin "$LAMBDA_IMAGE_REGISTRY"

tail-logs:
    FROM +devcontainer
    COPY serverless.yml .
    ARG LAMBDA_IMAGE_NAME=$LAMBDA_IMAGE_NAME_MASTER
    ARG LAMBDA_IMAGE_TAG=latest
    ENV LAMBDA_IMAGE="$LAMBDA_IMAGE_NAME:$LAMBDA_IMAGE_TAG"
    ARG DEPLOY_STAGE
    RUN --no-cache \
        --mount=type=secret,id=+secrets/.envrc,target=.envrc \
        . ./.envrc \
        && npx serverless logs -t -f web --stage "${DEPLOY_STAGE}"

waybackpy:
    FROM python:3.9
    RUN pip install waybackpy==2.4.4

wayback-save:
    FROM +waybackpy
    ARG --required URL
    RUN waybackpy --save --url "$URL" --user_agent "charleywong"

copy-image:
    LOCALLY
    ARG --required SRC
    ARG --required DEST
    RUN docker pull "$SRC"
    RUN docker tag "$SRC" "$DEST"
    RUN docker push "$DEST"
