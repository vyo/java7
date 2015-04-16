#Dockerfile for OpenJDK 7, based on the Alpine Linux image

FROM alpine:3.1

MAINTAINER Manuel Weidmann <weidmann.manuel@gmail.com>

RUN apk add --update openjdk7 ca-certificates && rm -rf /var/cache/apk/* && \
  find /usr/share/ca-certificates/mozilla/ -name "*.crt" -exec keytool -import -trustcacerts \
  -keystore /usr/lib/jvm/java-1.7-openjdk/jre/lib/security/cacerts -storepass changeit -noprompt \
  -file {} -alias {} \; && \
  keytool -list -keystore /usr/lib/jvm/java-1.7-openjdk/jre/lib/security/cacerts --storepass changeit

ENV JAVA_HOME /usr/lib/jvm/java-1.7-openjdk
ENV JAVA=$JAVA_HOME/bin
ENV PATH $PATH:$$JAVA_HOME:$JAVA

CMD ["java -version"]