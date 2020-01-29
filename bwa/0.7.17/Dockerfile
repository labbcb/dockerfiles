FROM debian:9.9

LABEL maintainer="well309@gmail.com"

ENV BWA_VERSION 0.7.17

RUN apt-get update && \
  apt-get install --yes --no-install-recommends \
    build-essential \
    ca-certificates \
    curl \
    zlib1g-dev && \
  curl -fsSL https://github.com/lh3/bwa/archive/v${BWA_VERSION}.tar.gz \
    -o bwa.tar.gz && \
  tar xf bwa.tar.gz && \
  cd bwa-${BWA_VERSION}/ && \
  make && \
  mv bwa qualfa2fq.pl xa2multi.pl /usr/local/bin && \
  cd .. && \
  rm -rf bwa.tar.gz bwa-${BWA_VERSION}/ && \
  apt-get autoremove --yes && \
  rm -rf /var/lib/apt/lists/*

CMD bwa
