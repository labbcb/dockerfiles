FROM debian:jessie

LABEL maintainer="well309@gmail.com"

ENV BOWTIE_VERSION 1.2.2
ENV BOWTIE2_VERSION 2.3.4.1
ENV SAMTOOLS_VERSION 1.8
ENV BISMARK_VERSION 0.19.0

RUN apt-get update \
  && apt-get install --yes --no-install-recommends \
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
    libgd-graph-perl \
  && curl -fsSL https://github.com/BenLangmead/bowtie/archive/v${BOWTIE_VERSION}.tar.gz -o bowtie.tar.gz \
  && mkdir bowtie \
  && tar xf bowtie.tar.gz -C bowtie --strip-components=1 \
  && cd bowtie \
  && make install \
  && cd .. \
  && curl -fsSL https://github.com/BenLangmead/bowtie2/archive/v${BOWTIE2_VERSION}.tar.gz -o bowtie2.tar.gz \
  && mkdir bowtie2 \
  && tar xf bowtie2.tar.gz -C bowtie2 --strip-components=1 \
  && cd bowtie2 \
  && make install \
  && cd .. \
  && curl -fsSL https://github.com/samtools/samtools/releases/download/${SAMTOOLS_VERSION}/samtools-${SAMTOOLS_VERSION}.tar.bz2 -o samtools.tar.bz2 \
  && mkdir samtools \
  && tar xf samtools.tar.bz2 -C samtools --strip-components=1 \
  && cd samtools \
  && ./configure \
  && make install \
  && cd .. \
  && curl -fsSL https://github.com/FelixKrueger/Bismark/archive/${BISMARK_VERSION}.tar.gz -o bismark.tar.gz \
  && mkdir bismark \
  && tar xf bismark.tar.gz -C bismark --strip-components=1 \
  && cd bismark \
  && cp bam2nuc bismark bismark2bedGraph bismark2report bismark2summary bismark_genome_preparation bismark_methylation_extractor copy_bismark_files_for_release.pl coverage2cytosine deduplicate_bismark filter_non_conversion NOMe_filtering /usr/local/bin/ \
  && cd .. \
  && rm -rf bismark* samtools* bowtie* bowtie2* \
  && apt-get remove --yes \
    curl ca-certificates \
    ca-certificates \
    build-essential \
  && apt-get autoremove --yes \
  && rm -rf /var/lib/apt/lists/*

CMD bismark
