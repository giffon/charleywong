FROM ubuntu:bionic

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

WORKDIR /workspace
COPY . /workspace
RUN chmod a+r data/groonga/*

ENTRYPOINT ["npx", "aws-lambda-ric"]
CMD ["index.handler"]
