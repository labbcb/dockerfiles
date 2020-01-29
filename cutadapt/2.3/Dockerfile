FROM debian:9.9

LABEL maintainer="well309@gmail.com"

ENV CUTADAPT_VERSION 2.3

RUN apt-get update && \
  apt-get install --yes --no-install-recommends \
    build-essential \
    python3-dev \
    python3-pip \
    python3-setuptools && \
  pip3 install cutadapt==${CUTADAPT_VERSION} && \
  rm -rf /var/lib/apt/lists/*

CMD cutadapt
