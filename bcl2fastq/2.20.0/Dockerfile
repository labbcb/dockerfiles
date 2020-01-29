FROM centos:centos7

LABEL maintainer="well309@gmail.com"

ENV BCL2FASTQ_VERSION 2.20.0

RUN yum -y install \
    zlib \
    librt \
    libpthread \
    unzip \
  && curl -O https://support.illumina.com/content/dam/illumina-support/documents/downloads/software/bcl2fastq/bcl2fastq2-v2-20-0-linux-x86-64.zip \
  && unzip bcl2fastq2-v2-20-0-linux-x86-64.zip \
  && rpm -i bcl2fastq2-v${BCL2FASTQ_VERSION}.422-Linux-x86_64.rpm \
  && rm bcl2fastq2-v2-20-0-linux-x86-64.zip bcl2fastq2-v${BCL2FASTQ_VERSION}.422-Linux-x86_64.rpm

CMD bcl2fastq
