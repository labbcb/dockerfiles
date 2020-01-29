FROM ubuntu:18.04

ENV SHAPEIT2_VERSION 900

RUN apt-get update \
  && apt-get install --yes --no-install-recommends \
    ca-certificates \
    curl \
  && curl -O https://mathgen.stats.ox.ac.uk/genetics_software/shapeit/shapeit.v2.r${SHAPEIT2_VERSION}.glibcv2.17.linux.tar.gz \
  && tar xzvf shapeit.v2.r${SHAPEIT2_VERSION}.glibcv2.17.linux.tar.gz \
  && cp shapeit.v2.${SHAPEIT2_VERSION}.glibcv2.17.linux/bin/shapeit /usr/local/bin \
  && rm -r shapeit* \
  && apt-get remove --yes \
        curl \
        ca-certificates \
      && apt-get autoremove --yes \
      && rm -rf /var/lib/apt/lists/*

CMD shapeit
