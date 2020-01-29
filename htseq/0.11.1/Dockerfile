FROM debian:stretch

LABEL maintainer="well309@gmail.com"

ENV HTSEQ_VERSION=0.11.1

RUN apt-get update && \
  apt-get install --yes --no-install-recommends \
    build-essential \
    python2.7-dev \
    python-numpy \
    python-matplotlib \
    python-pysam \
    python-pip && \
  pip install HTSeq==${HTSEQ_VERSION} && \
  apt-get remove --yes \
    build-essential && \
  rm -rf /var/lib/apt/lists/*

CMD ["htseq-count"]
