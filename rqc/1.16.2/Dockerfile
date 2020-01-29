FROM welliton/bioconductor:3.8

ADD Rqc /usr/local/bin/Rqc

RUN R -e 'install(c("optparse", "Rqc"))' \
  && chmod +x /usr/local/bin/Rqc

CMD Rqc
