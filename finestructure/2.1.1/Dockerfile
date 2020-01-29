FROM ubuntu:18.04

LABEL maintainer="well309@gmail.com"

ENV FINESTRUCTURE_VERSION 2.1.1

RUN apt-get update \
  && apt-get install --yes --no-install-recommends \
    build-essential \
    libgsl-dev \
    libgomp1 \
    ca-certificates \
    curl \
    zlib1g-dev \
  && curl -O https://people.maths.bris.ac.uk/~madjl/finestructure/fs-${FINESTRUCTURE_VERSION}.tar.gz \
  && tar xzvf fs-${FINESTRUCTURE_VERSION}.tar.gz \
  && cd fs-${FINESTRUCTURE_VERSION} \
  && ./configure \
  && make \
  && make install\
  && cd .. \
  rm -r fs-${FINESTRUCTURE_VERSION} \
  && apt-get remove --yes \
    build-essential \
    ca-certificates \
    curl \
  && apt-get autoremove --yes \
  && rm -rf /var/lib/apt/lists/*

CMD fs