FROM giffon/charleywong_devcontainer_workspace:20211107184339 as build
RUN mkdir -p /workspace
WORKDIR /workspace
COPY package.json yarn.lock ./
RUN yarn --production

FROM ubuntu:focal

RUN apt-get update \
    && apt-get install -y --no-install-recommends software-properties-common curl \
    && add-apt-repository -y universe \
    && add-apt-repository -y ppa:groonga/ppa \
    && apt-get install -y --no-install-recommends groonga groonga-token-filter-stem \
    && curl -sL https://deb.nodesource.com/setup_14.x | bash - \
    && apt-get install -y --no-install-recommends nodejs=14.* \
    #
    # Clean up
    && apt-get autoremove -y \
    && apt-get clean -y \
    && rm -rf /var/lib/apt/lists/*

WORKDIR /workspace
COPY --from=build /workspace/node_modules ./node_modules
COPY . ./
RUN chmod a+r data/groonga/*

ENTRYPOINT ["npx", "aws-lambda-ric"]
CMD ["index.handler"]
