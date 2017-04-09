FROM alpine:latest
MAINTAINER brettm357@me.com

ENV UNIFI_VERSION 5.6.2-224554000b

RUN apk upgrade --update && \

    apk add --update --no-cache \
    curl \
    mongodb \
    openjdk8-jre \
    
    curl https://www.ubnt.com/downloads/unifi/$UNIFI_VERSION/unifi_sysvinit_all.deb






