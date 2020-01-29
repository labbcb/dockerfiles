FROM welliton/cutadapt:2.3

LABEL maintainer="well309@gmail.com"

ENV TRIMGALORE_VERSION 0.6.4

RUN apt-get update \
  && apt-get install --yes --no-install-recommends \
    curl \
  && curl -fsSL https://github.com/FelixKrueger/TrimGalore/archive/${TRIMGALORE_VERSION}.tar.gz -o trim_galore.tar.gz \
  && mkdir trimgalore \
  && tar xf trim_galore.tar.gz -C trimgalore --strip-components=1 \
  && mv trimgalore/trim_galore /usr/local/bin/ \
  && rm -rf trimgalore \
  && apt-get remove --yes curl \
  && apt-get autoremove --yes \
  && rm -rf /var/lib/apt/lists/*

CMD trim_galore
