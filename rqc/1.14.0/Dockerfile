FROM welliton/bioconductor:3.7

ADD Rqc /usr/local/bin/Rqc

RUN R -e 'biocLite(c("optparse", "Rqc"))' \
  && chmod +x /usr/local/bin/Rqc

CMD Rqc
