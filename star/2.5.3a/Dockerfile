FROM debian:stretch

LABEL maintainer="well309@gmail.com"

ENV STAR_VERSION 2.5.3a

RUN apt-get update \
  && apt-get install --yes --no-install-recommends \
    ca-certificates \
    g++ \
    make \
    curl \
    zlib1g-dev \
  && curl -fsSL https://github.com/alexdobin/STAR/archive/${STAR_VERSION}.tar.gz -o star.tar.gz \
  && mkdir star \
  && tar xf star.tar.gz -C star --strip-components=1 \
  && cd star/source \
  && make STAR \
  && make STARlong \
  && mv STAR STARlong /usr/local/bin/ \
  && cd ../.. \
  && rm -r star star.tar.gz

CMD STAR
