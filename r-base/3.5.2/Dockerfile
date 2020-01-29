FROM debian:jessie

LABEL maintainer="well309@gmail.com"

ENV R_VERSION 3.5.2

RUN apt-get update \
  && apt-get install --yes --no-install-recommends \
    build-essential \
    ca-certificates \
    curl \
    gfortran \
    libbz2-dev \
    libcairo2-dev \
    libcurl4-openssl-dev \
    liblzma-dev \
    libpcre3-dev \
    libreadline6-dev \
    libssl-dev \
    libxml2-dev \
    zlib1g-dev

RUN curl -fsSL https://cran.r-project.org/src/base/R-3/R-${R_VERSION}.tar.gz -o r.tar.gz \
  && mkdir r \
  && tar xf r.tar.gz -C r --strip-components=1 \
  && cd r \
  && ./configure --with-x=no \
  && make \
  && make install \
  && cd .. \
  && rm -r r r.tar.gz

CMD R
