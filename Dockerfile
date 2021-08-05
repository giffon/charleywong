FROM giffon/charleywong_devcontainer_workspace:20210806015210 as build
RUN mkdir -p /workspace
WORKDIR /workspace

COPY package.json yarn.lock ./
RUN yarn

COPY . .
RUN haxe serviceWorker.hxml
RUN npx browserify serviceWorker.js --transform [ babelify --global ] -g [ envify --NODE_ENV production ] -g uglifyify | npx terser --compress --mangle > static/serviceWorker.bundled.js
RUN haxe browser.hxml
RUN npx browserify browser.js -g [ envify --NODE_ENV production ] -g uglifyify | npx terser --compress --mangle > static/browser.bundled.js
RUN haxe server.hxml

RUN yarn --production

# Grab a fresh slim copy of the image to reduce the final size
FROM ubuntu:bionic

# Configure apt and install packages
RUN apt-get update \
    && apt-get install -y --no-install-recommends software-properties-common curl \
    && add-apt-repository -y universe \
    && add-apt-repository -y ppa:groonga/ppa \
    && apt-get install -y --no-install-recommends groonga groonga-tokenizer-mecab groonga-token-filter-stem groonga-normalizer-mysql \
    && curl -sL https://deb.nodesource.com/setup_14.x | bash - \
    && apt-get install -y --no-install-recommends nodejs=14.* \
    #
    # Clean up
    && apt-get autoremove -y \
    && apt-get clean -y \
    && rm -rf /var/lib/apt/lists/*

# Set working directory to function root directory
WORKDIR /workspace

# Copy in the built dependencies
COPY --from=build /workspace /workspace

ENTRYPOINT ["/usr/local/bin/npx", "aws-lambda-ric"]
CMD ["index.handler"]
