#Dockerfile for OpenJDK 7, based on the Alpine Linux image

FROM alpine:3.1

MAINTAINER Manuel Weidmann <weidmann.manuel@gmail.com>

RUN apk add --update openjdk7 && rm -rf /var/cache/apk/*

ENV JAVA_HOME /usr/lib/jvm/java-1.7-openjdk
ENV JAVA=$JAVA_HOME/bin
ENV PATH $PATH:$$JAVA_HOME:$JAVA

CMD ["java -version"]