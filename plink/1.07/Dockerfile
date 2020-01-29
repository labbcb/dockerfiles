FROM ubuntu:18.04

LABEL maintainer="well309@gmail.com"

ENV PLINK_VERSION 1.07

RUN apt-get update \
  && apt-get install --yes --no-install-recommends \
    curl \
    unzip \
  && curl -O http://s3.amazonaws.com/plink1-assets/${PLINK_VERSION}/plink1_linux_x86_64.zip \
  && unzip plink1_linux_x86_64.zip \
  && cp plink-${PLINK_VERSION}-x86_64/plink /usr/local/bin/ \
  && rm -r plink* \
  && apt-get remove --yes \
    curl \
    unzip \
  && apt-get autoremove --yes \
  && rm -rf /var/lib/apt/lists/*

CMD plink