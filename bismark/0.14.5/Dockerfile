FROM debian:jessie

LABEL maintainer="well309@gmail.com"

ENV BOWTIE_VERSION 1.2.0
ENV SAMTOOLS_VERSION 1.5
ENV BISMARK_VERSION 0.14.5

RUN apt-get update && \
  apt-get install --yes --no-install-recommends \
    build-essential \
    libtbb-dev \
    python \
    curl \
    ca-certificates \
    libncurses5-dev \
    zlib1g-dev \
    libbz2-dev \
    liblzma-dev \
    libcurl4-openssl-dev \
    libfindbin-libs-perl \
    libgd-graph-perl && \
  curl -fsSL https://github.com/BenLangmead/bowtie/archive/v${BOWTIE_VERSION}.tar.gz \
    -o bowtie.tar.gz && \
  tar xf bowtie.tar.gz && \
  cd bowtie-${BOWTIE_VERSION} && \
  make && \
  cp bowtie bowtie-align-l bowtie-align-s bowtie-build bowtie-build-l \
    bowtie-build-s bowtie-inspect bowtie-inspect-l bowtie-inspect-s \
    /usr/local/bin/ && \
  curl -fsSL https://github.com/samtools/samtools/releases/download/${SAMTOOLS_VERSION}/samtools-${SAMTOOLS_VERSION}.tar.bz2 \
    -o samtools.tar.bz2 && \
  tar xf samtools.tar.bz2 && \
  cd samtools-${SAMTOOLS_VERSION}/ && \
  ./configure && \
  make && \
  make install && \
  curl -fsSL https://github.com/FelixKrueger/Bismark/archive/${BISMARK_VERSION}.tar.gz \
    -o bismark.tar.gz && \
  tar xf bismark.tar.gz && \
  mv Bismark-${BISMARK_VERSION}/* /usr/local/bin/ && \
  rm -rf \
    bismark.tar.gz \
    Bismark-${BISMARK_VERSION}/ \
    samtools.tar.bz2 \
    samtools-${SAMTOOLS_VERSION}/ \
    bowtie-${BOWTIE_VERSION}/ \
    bowtie.tar.gz && \
  apt-get remove --yes \
    curl ca-certificates \
    ca-certificates \
    build-essential && \
  apt-get autoremove --yes && \
  rm -rf /var/lib/apt/lists/*

CMD ["bismark"]
