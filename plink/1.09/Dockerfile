FROM ubuntu:18.04

LABEL maintainer="well309@gmail.com"

ENV PLINK_VERSION 1.09

RUN apt-get update \
  && apt-get install --yes --no-install-recommends \
    curl \
    unzip \
  && curl -O http://s3.amazonaws.com/plink1-assets/plink_linux_x86_64_20190617.zip \
  && unzip plink_linux_x86_64_20190617.zip \
  && mv plink prettify /usr/local/bin/ \
  && rm plink_linux_x86_64_20190617.zip toy.map toy.ped \
  && apt-get remove --yes \
    curl \
    unzip \
  && apt-get autoremove --yes \
  && rm -rf /var/lib/apt/lists/*

CMD plink