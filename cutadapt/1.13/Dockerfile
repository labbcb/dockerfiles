FROM debian:stretch

LABEL maintainer="well309@gmail.com"

ENV CUTADAPT_VERSION 1.13

RUN apt-get update && \
  apt-get install --yes --no-install-recommends \
    build-essential \
    python-dev \
    python-pip \
    python-setuptools && \
  pip install cutadapt==${CUTADAPT_VERSION} && \
  rm -rf /var/lib/apt/lists/*

CMD ["cutadapt"]
