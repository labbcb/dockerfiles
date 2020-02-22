FROM python:3.7.5

LABEL maintainer="well309@gmail.com"

ENV CUTADAPT_VERSION 2.7

#RUN apt-get update && \
#  apt-get install --yes --no-install-recommends \
#    build-essential \
#    python3-dev \
#    python3-pip \
#    python3-setuptools && \
RUN  pip3 install cutadapt==${CUTADAPT_VERSION}
#  rm -rf /var/lib/apt/lists/*

CMD cutadapt
