FROM alpine:3.8

ENV KRAKEN_VERSION 13-274

RUN apk add --no-cache \
        curl \
        gcc \
        libc-dev \
        make \
        zlib-dev \
    && curl -fsSL http://wwwdev.ebi.ac.uk/enright-dev/kraken/reaper/src/reaper-${KRAKEN_VERSION}.tgz -o kraken.tgz \
    && mkdir kraken \
    && tar xf kraken.tgz -C kraken --strip-components=1 \
    && cd kraken/src \
    && make \
    && cp minion reaper swan tally /usr/local/bin/