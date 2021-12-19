FROM mcr.microsoft.com/vscode/devcontainers/base:0-focal

ARG TARGETARCH

# Avoid warnings by switching to noninteractive
ENV DEBIAN_FRONTEND=noninteractive

ARG INSTALL_ZSH
ARG UPGRADE_PACKAGES
ARG ENABLE_NONROOT_DOCKER
ARG USE_MOBY
ARG USERNAME
ARG USER_UID
ARG USER_GID
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

# Config direnv
COPY --chown=$USER_UID:$USER_GID direnv.toml /home/$USERNAME/.config/direnv/config.toml

# AWS cli
RUN cd / \
    && curl -fsSL "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "awscliv2.zip" \
    && unzip -qq awscliv2.zip \
    && ./aws/install \
    && rm -rf ./aws awscliv2.zip

# https://github.com/wagoodman/dive
ARG DIVE_VERSION=0.10.0
RUN curl -fsSL "https://github.com/wagoodman/dive/releases/download/v${DIVE_VERSION}/dive_${DIVE_VERSION}_linux_amd64.deb" -o dive.deb \
    && apt install ./dive.deb \
    && rm -rf ./dive.deb

# Install earthly
RUN curl -fsSL https://github.com/earthly/earthly/releases/download/v0.6.2/earthly-linux-${TARGETARCH} -o /usr/local/bin/earthly \
    && chmod +x /usr/local/bin/earthly
RUN earthly bootstrap --no-buildkit --with-autocomplete

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
