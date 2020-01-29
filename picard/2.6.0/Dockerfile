FROM openjdk:8-jre

LABEL maintainer="well309@gmail.com"

ENV PICARD_VERSION 2.6.0

RUN curl -fsSL https://github.com/broadinstitute/picard/releases/download/${PICARD_VERSION}/picard.jar -o /usr/picard.jar

CMD java -jar /usr/picard.jar
