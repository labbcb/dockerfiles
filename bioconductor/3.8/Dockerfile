FROM welliton/r-base:3.5.2

LABEL maintainer="well309@gmail.com"

RUN Rscript -e 'install.packages("BiocManager", repos="https://cloud.r-project.org/"); BiocManager::install()' \
  && echo "library(BiocManager)" > $HOME/.Rprofile
