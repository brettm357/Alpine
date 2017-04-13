FROM alpine:latest
MAINTAINER brettm357@me.com

ENV HOME /root
ENV UNIFI_VERSION 5.6.2-224554000b

#RUN @testing http://nl.alpinelinux.org/alpine/edge/testing

#RUN echo http://nl.alpinelinux.org/alpine/edge/testing >> /etc/apk/repositories 

#RUN apk upgrade --update && \

#    apk --no-cache add \
#    dpkg \
#    curl \
#    mongodb \
#    openjdk8-jre \
#    wget \
RUN apk add --no-cache --virtual=build-dependencies \
	curl \
	unzip && \

 # INSTALL RUNTIME PACKAGES
    apk add --no-cache \
	openjdk8-jre-base \
	supervisor && \

 # INSTALL UNIFI
   # mkdir -p \
   # /opt/unifi && \

    curl -o \
    /tmp/unifi.zip -L "https://www.ubnt.com/downloads/unifi/$UNIFI_VERSION/UniFi.unix.zip" && \
    unzip /tmp/unifi.zip && \
    #-d /opt/unifi && \
    
 # CLEANUP
    apk del --purge \
    build-dependencies && \
    rm -rf /tmp/*
    
    VOLUME /usr/lib/unifi/data
    
    WORKDIR /usr/lib/unifi






