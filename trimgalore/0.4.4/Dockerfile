FROM welliton/cutadapt:1.13

LABEL maintainer="well309@gmail.com"

ENV TRIMGALORE_VERSION 0.4.4

RUN apt-get update && \
  apt-get install --yes --no-install-recommends \
    curl && \
  curl -fsSL https://github.com/FelixKrueger/TrimGalore/archive/${TRIMGALORE_VERSION}.tar.gz \
    -o trim_galore.tar.gz && \
  tar xf trim_galore.tar.gz && \
  mv TrimGalore-${TRIMGALORE_VERSION}/trim_galore /usr/local/bin/ && \
  rm -rf TrimGalore-${TRIMGALORE_VERSION}/ && \
  apt-get remove --yes curl && \
  apt-get autoremove --yes && \
  rm -rf /var/lib/apt/lists/*

CMD ["trim_galore"]
