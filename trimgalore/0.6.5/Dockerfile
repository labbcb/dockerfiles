FROM welliton/cutadapt:2.7

LABEL maintainer="well309@gmail.com"

ENV TRIMGALORE_VERSION 0.6.5

RUN curl -fsSL https://github.com/FelixKrueger/TrimGalore/archive/${TRIMGALORE_VERSION}.tar.gz -o trim_galore.tar.gz \
  && mkdir trimgalore \
  && tar xf trim_galore.tar.gz -C trimgalore --strip-components=1 \
  && mv trimgalore/trim_galore /usr/local/bin/ \
  && rm -rf trimgalore

CMD trim_galore
