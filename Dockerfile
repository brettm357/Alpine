FROM alpine:latest
MAINTAINER brettm357@me.com

ENV UNIFI_VERSION 5.6.2-224554000b

#RUN @testing http://nl.alpinelinux.org/alpine/edge/testing

RUN echo http://nl.alpinelinux.org/alpine/edge/testing >> /etc/apk/repositories  

RUN apk upgrade --update && \

    apk --no-cache add \
    curl \
    mongodb \
    openjdk8-jre \
    
    #curl https://www.ubnt.com/downloads/unifi/$UNIFI_VERSION/unifi_sysvinit_all.deb






