FROM openjdk:8-jre

LABEL maintainer="well309@gmail.com"

ENV FASTQC_VERSION 0.11.6

RUN apt-get update && \
  apt-get install --yes --no-install-recommends \
    fontconfig \
    perl && \
  wget -q https://www.bioinformatics.babraham.ac.uk/projects/fastqc/fastqc_v${FASTQC_VERSION}.zip && \
  unzip -qq /fastqc_v${FASTQC_VERSION}.zip && \
  chmod 755 /FastQC/fastqc && \
  ln -s /FastQC/fastqc /usr/local/bin/fastqc && \
  rm /fastqc_v${FASTQC_VERSION}.zip && \
  rm -rf /var/lib/apt/lists/*

CMD ["fastqc"]
