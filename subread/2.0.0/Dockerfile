FROM debian:jessie

LABEL maintainer="well309@gmail.com"

ENV SUBREAD_VERSION 2.0.0

RUN apt-get update && \
  apt-get install --yes --no-install-recommends \
    build-essential \
    ca-certificates \
    wget \
    zlib1g-dev && \
  wget https://downloads.sourceforge.net/project/subread/subread-${SUBREAD_VERSION}/subread-${SUBREAD_VERSION}-source.tar.gz && \
  tar xf subread-${SUBREAD_VERSION}-source.tar.gz && \
  cd subread-${SUBREAD_VERSION}-source/src/ && \
  make -f Makefile.Linux && \
  find ../bin -type f -exec cp -t /usr/local/bin/ {} + && \
  rm -rf /subread* && \
  apt-get remove --yes \
    build-essential \
    ca-certificates \
    wget && \
  rm -rf /var/lib/apt/lists/*

CMD ["subread-align"]
