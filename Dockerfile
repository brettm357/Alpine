FROM alpine:3.5
MAINTAINER brettm357@me.com

RUN apk upgrade --update \

    apk add --no-cache \
    mongodb \
    openjdk8-jre





