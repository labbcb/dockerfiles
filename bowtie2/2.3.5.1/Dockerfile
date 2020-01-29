FROM debian:9.9

LABEL maintainer="well309@gmail.com"

ENV BOWTIE2_VERSION 2.3.4.1

RUN apt-get update \
  && apt-get install --yes --no-install-recommends \
    build-essential \
    curl \
    ca-certificates \
    libsys-hostname-long-perl \
    libtbb-dev \
    zlib1g-dev \
  && curl -fsSL https://github.com/BenLangmead/bowtie2/archive/v${BOWTIE2_VERSION}.tar.gz -o bowtie2.tar.gz \
  && mkdir bowtie2 \
  && tar xf bowtie2.tar.gz -C bowtie2 --strip-components=1 \
  && cd bowtie2 \
  && make install \
  && cd .. \
  && rm -rf bowtie2* \
  && apt-get remove --yes \
    curl \
    ca-certificates \
    build-essential \
  && apt-get autoremove --yes \
  && rm -rf /var/lib/apt/lists/*

CMD bowtie2