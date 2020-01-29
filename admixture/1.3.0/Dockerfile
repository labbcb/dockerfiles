FROM ubuntu:18.04

LABEL maintainer="well309@gmail.com"

ENV ADMIXTURE_VERSION 1.3.0

RUN apt-get update \
  && apt-get install --yes --no-install-recommends \
    ca-certificates \
    curl \
  && curl -O http://software.genetics.ucla.edu/admixture/binaries/admixture_linux-${ADMIXTURE_VERSION}.tar.gz \
  && tar xzvf admixture_linux-${ADMIXTURE_VERSION}.tar.gz \
  && cp admixture_linux-${ADMIXTURE_VERSION}/admixture /usr/local/bin/ \
  && rm -r admixture_linux* \
  && apt-get remove --yes \
    ca-certificates \
    curl \
  && apt-get autoremove --yes \
  && rm -rf /var/lib/apt/lists/*

CMD admixture