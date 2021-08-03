FROM mcr.microsoft.com/vscode/devcontainers/base:0-bionic

# Avoid warnings by switching to noninteractive
ENV DEBIAN_FRONTEND=noninteractive

ARG INSTALL_ZSH="false"
ARG UPGRADE_PACKAGES="true"
ARG ENABLE_NONROOT_DOCKER="true"
ARG USE_MOBY="true"
ARG USERNAME=vscode
ARG USER_UID=1000
ARG USER_GID=$USER_UID
COPY library-scripts/*.sh /tmp/library-scripts/
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
    && apt-get install -y groonga groonga-bin groonga-tokenizer-mecab groonga-token-filter-stem groonga-normalizer-mysql \
    && curl -sL https://deb.nodesource.com/setup_14.x | bash - \
    && apt-get install -y nodejs=14.* \
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

# Config direnv
COPY --chown=$USER_UID:$USER_GID direnv.toml /home/$USERNAME/.config/direnv/config.toml

RUN cd / \
    && git clone --recurse-submodules https://github.com/taku910/mecab.git /mecab \
    && cd /mecab/mecab \
    && ./configure --enable-static --disable-shared --with-pic \
    && make -j \
    && make install \
    && cd / \
    && git clone --recurse-submodules --branch v11.0.5 https://github.com/groonga/groonga.git /groonga \
    && cp -r /groonga/include /groonga-include \
    && mkdir /groonga-bin \
    && cd /groonga-bin \
    && cmake /groonga -DCMAKE_BUILD_TYPE=RELEASE -DGRN_EMBED=ON \
    && make -j \
    && cd /mecab/mecab \
    && make uninstall \
    && cd / \
    && rm -rf /mecab /groonga 
ENV GROONGA_INCLUDE_PATH=/groonga-include
ENV GROONGA_BUILD_PATH=/groonga-bin

# AWS cli
RUN cd / \
    && curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "awscliv2.zip" \
    && unzip awscliv2.zip \
    && ./aws/install \
    && rm -rf ./aws awscliv2.zip

# Install yq
RUN wget https://github.com/mikefarah/yq/releases/download/v4.7.0/yq_linux_amd64.tar.gz -O - | tar xz && mv yq_linux_amd64 /usr/bin/yq

ENV YARN_CACHE_FOLDER=/yarn
RUN mkdir -m 777 "$YARN_CACHE_FOLDER"
ENV HAXESHIM_ROOT=/haxe
RUN mkdir -m 777 "$HAXESHIM_ROOT"
RUN mkdir -m 777 "/workspace"
USER $USERNAME
WORKDIR /workspace
COPY workspace/.haxerc /workspace/
RUN lix install haxe "$(jq -r ".version" .haxerc)"
COPY workspace/package.json workspace/yarn.lock /workspace/
RUN yarn
COPY workspace /workspace/
RUN lix download
RUN yarn dts2hx
VOLUME /workspace/node_modules /workspace/lib/dts2hx
RUN sed -ir 's/^__bash_prompt$/PS1="\\[\\033[0;32m\\]\\u \\[\\033[0m\\]➜ \\[\\033[1;34m\\]\\w\\[\\033[0m\\]\\$ "/' ~/.bashrc
USER root

# Expose pip installed binaries
ENV PATH="/home/${USERNAME}/.local/bin:${PATH}"

# Switch back to dialog for any ad-hoc use of apt-get
ENV DEBIAN_FRONTEND=

# Setting the ENTRYPOINT to docker-init.sh will configure non-root access 
# to the Docker socket. The script will also execute CMD as needed.
ENTRYPOINT [ "/usr/local/share/docker-init.sh" ]
CMD [ "sleep", "infinity" ]
