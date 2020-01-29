FROM centos:centos7

LABEL maintainer="well309@gmail.com"

ENV BCL2FASTQ_VERSION 1.8.4

RUN yum -y install \
    libxslt \
    libxslt-devel \
    libxml2 \
    libxml2-devel \
    gcc \
    ImageMagick \
    bzip2 \
    bzip2-devel \
    zlib \
    zlib-devel \
    gnuplot \
    perl \
    perl-Data-Dumper \
    perl-Digest-MD5 \
    perl-XML-Simple \
  && curl -O ftp://webdata:webdata@ussd-ftp.illumina.com/Downloads/Software/bcl2fastq/bcl2fastq-${BCL2FASTQ_VERSION}-Linux-x86_64.rpm \
  && rpm -i bcl2fastq-${BCL2FASTQ_VERSION}-Linux-x86_64.rpm \
  && rm bcl2fastq-${BCL2FASTQ_VERSION}-Linux-x86_64.rpm

CMD configureBclToFastq.pl
