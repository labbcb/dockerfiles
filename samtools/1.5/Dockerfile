FROM debian:jessie

LABEL maintainer="well309@gmail.com"

ENV HTSLIB_VERSION 1.5
ENV SAMTOOLS_VERSION 1.5

RUN apt-get update && \
  apt-get install --yes --no-install-recommends \
    autoconf \
    build-essential \
    ca-certificates \
    curl \
    libcurl4-openssl-dev \
    libssl-dev \
    libbz2-dev \
    liblzma-dev \
    lib32ncurses5-dev \
    zlib1g-dev && \
  curl -fsSL https://github.com/samtools/htslib/archive/${HTSLIB_VERSION}.tar.gz \
    -o htslib.tar.gz && \
  tar xf htslib.tar.gz && \
  cd htslib-${HTSLIB_VERSION}/ && \
  autoheader && \
  autoconf && \
  ./configure && \
  make && \
  make install && \
  cd .. && \
  curl -fsSL https://github.com/samtools/samtools/archive/${SAMTOOLS_VERSION}.tar.gz \
    -o samtools.tar.gz && \
  tar xf samtools.tar.gz && \
  cd samtools-${SAMTOOLS_VERSION}/ && \
  autoconf -Wno-syntax && \
  ./configure && \
  make && \
  make install && \
  cd .. && \
  rm -rf htslib.tar.gz htslib-${HTSLIB_VERSION}/ && \
  rm -rf samtools.tar.gz samtools-${SAMTOOLS_VERSION}/ && \
  rm -rf /var/lib/apt/lists/*

CMD samtools
