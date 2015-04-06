#Dockerfile for OpenJDK 7, based on the Alpine Linux image

FROM alpine:3.1

MAINTAINER Manuel Weidmann <weidmann.manuel@gmail.com>

RUN apk add --update openjdk7 && rm -rf /var/cache/apk/*

CMD ["java -version"]

ENV JAVA_HOME /usr/bin/jvm/java-1.7-openjdk
ENV PATH $PATH:/usr/bin/jvm/java-1.7-openjdk/bin