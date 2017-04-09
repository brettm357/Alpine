FROM alpine:3.5
MAINTAINER brettm357@me.com

ENV UNIFI_VERSION 5.6.2-224554000b

RUN apk upgrade --update \

    apk add --no-cache \
    mongodb \
    openjdk8-jre





