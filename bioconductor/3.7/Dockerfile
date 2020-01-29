FROM welliton/r-base:3.5.0

LABEL maintainer="well309@gmail.com"

RUN R -e 'source("https://bioconductor.org/biocLite.R"); biocLite()' \
  && echo "library(BiocInstaller)" > $HOME/.Rprofile
