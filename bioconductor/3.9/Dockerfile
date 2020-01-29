FROM welliton/r-base:3.6.1

LABEL maintainer="well309@gmail.com"

ENV BIOC_VERSION 3.9

RUN R -e 'install.packages("BiocManager", repos="http://cran.us.r-project.org"); BiocManager::install(update=TRUE, ask=FALSE, version="3.9")' \
  && echo "library(BiocManager)" > $HOME/.Rprofile

CMD R
