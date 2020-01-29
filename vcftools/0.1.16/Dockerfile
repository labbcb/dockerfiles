FROM ubuntu:18.04

LABEL maintainer="well309@gmail.com"

ENV VCFTOOLS_VERSION 0.1.16

RUN apt-get update \
  && apt-get install --yes --no-install-recommends \
    build-essential \
    ca-certificates \
    curl \
    pkg-config \
    zlib1g-dev \
  && curl -LO https://github.com/vcftools/vcftools/releases/download/v${VCFTOOLS_VERSION}/vcftools-${VCFTOOLS_VERSION}.tar.gz \
  && tar xzvf vcftools-${VCFTOOLS_VERSION}.tar.gz \
  && cd vcftools-${VCFTOOLS_VERSION} \
  && ./configure \
  && make \
  && make install \
  && cd .. \
  && rm -r vcftools-${VCFTOOLS_VERSION} \
  && apt-get remove --yes \
    build-essential \
    ca-certificates \
    curl \
  && apt-get autoremove --yes \
  && rm -rf /var/lib/apt/lists/*

CMD vcftools