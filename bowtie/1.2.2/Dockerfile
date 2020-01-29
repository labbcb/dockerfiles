FROM debian:jessie

LABEL maintainer="well309@gmail.com"

ENV BOWTIE_VERSION 1.2.2

RUN apt-get update \
  && apt-get install --yes --no-install-recommends \
    ca-certificates \
    build-essential \
    libtbb-dev \
    python \
    zlib1g-dev \
    wget \
  && wget https://github.com/BenLangmead/bowtie/archive/v${BOWTIE_VERSION}.tar.gz \
  && tar xf v${BOWTIE_VERSION}.tar.gz \
  && cd bowtie-${BOWTIE_VERSION} \
  && make \
  && cp bowtie bowtie-align-l bowtie-align-s bowtie-build bowtie-build-l \
    bowtie-build-s bowtie-inspect bowtie-inspect-l bowtie-inspect-s \
    /usr/local/bin/ \
  && cd / \
  && rm -rf bowtie-${BOWTIE_VERSION} v${BOWTIE_VERSION}.tar.gz \
  && apt-get remove --yes \
    ca-certificates \
    build-essential \
    wget \
  && rm -rf /var/lib/apt/lists/*

CMD ["bowtie"]
