FROM debian:9.9

LABEL maintainer="well309@gmail.com"

ENV HISAT2_VERSION 2.1.0
ENV BOWTIE_VERSION 1.2.3
ENV BOWTIE2_VERSION 2.3.5.1
ENV HTSLIB_VERSION 1.9
ENV SAMTOOLS_VERSION 1.9
ENV BISMARK_VERSION 0.22.2

RUN apt-get update \
  && apt-get install --yes --no-install-recommends \
    autoconf \
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
    unzip \
  && curl http://ccb.jhu.edu/software/hisat2/dl/hisat2-${HISAT2_VERSION}-Linux_x86_64.zip -o hisat2.zip \
  && unzip hisat2.zip \
  && cd hisat2-${HISAT2_VERSION} \
  && mv hisat2* extract_* hisatgenotype* /usr/local/bin \
  && cd .. \
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
  && curl -fsSL https://github.com/samtools/htslib/archive/${HTSLIB_VERSION}.tar.gz -o htslib.tar.gz \
  && tar xf htslib.tar.gz \
  && cd htslib-${HTSLIB_VERSION}/ \
  && autoheader \
  && autoconf \
  && ./configure \
  && make \
  && make install \
  && cd .. \
  && curl -fsSL https://github.com/samtools/samtools/archive/${SAMTOOLS_VERSION}.tar.gz -o samtools.tar.gz \
  && tar xf samtools.tar.gz \
  && cd samtools-${SAMTOOLS_VERSION}/ \
  && autoheader \
  && autoconf -Wno-syntax \
  && ./configure \
  && make \
  && make install \
  && cd .. \
  && curl -fsSL https://github.com/FelixKrueger/Bismark/archive/${BISMARK_VERSION}.tar.gz -o bismark.tar.gz \
  && mkdir bismark \
  && tar xf bismark.tar.gz -C bismark --strip-components=1 \
  && cd bismark \
  && cp bam2nuc bismark bismark2bedGraph bismark2report bismark2summary bismark_genome_preparation bismark_methylation_extractor copy_bismark_files_for_release.pl coverage2cytosine deduplicate_bismark filter_non_conversion NOMe_filtering /usr/local/bin/ \
  && cd .. \
  && rm -rf bismark* samtools* bowtie* bowtie2* hisat2-* htslib* \
  && apt-get remove --yes \
    curl \
    ca-certificates \
    build-essential \
  && apt-get autoremove --yes \
  && rm -rf /var/lib/apt/lists/*

CMD bismark
