FROM openjdk:8-jre

LABEL maintainer="well309@gmail.com"

ENV FASTQC_VERSION 0.11.8

RUN apt-get update \
  && apt-get install --yes --no-install-recommends \
    fontconfig \
    perl \
  && curl -fsSL https://www.bioinformatics.babraham.ac.uk/projects/fastqc/fastqc_v${FASTQC_VERSION}.zip -o fastqc.zip \
  && unzip -qq fastqc.zip \
  && chmod 755 FastQC/fastqc \
  && ln -s /FastQC/fastqc /usr/local/bin/fastqc \
  && rm fastqc.zip \
  && rm -rf /var/lib/apt/lists/*

CMD fastqc
