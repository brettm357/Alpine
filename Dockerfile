FROM alpine:latest
MAINTAINER brettm357@me.com

RUN apk add --no-cache --update-cache bash

#ENV HOME /root
#ENV UNIFI_VERSION 5.6.2-224554000b

#RUN @testing http://nl.alpinelinux.org/alpine/edge/testing

#RUN echo http://nl.alpinelinux.org/alpine/edge/testing >> /etc/apk/repositories 
#RUN echo https://www.ubnt.com/downloads/unifi/5.6.2-224554000b >> /etc/apk/repositories

#RUN apk upgrade --update && \

#    apk --no-cache add \
#    dpkg \
#    curl \
#    jsvc \
#    mongodb \
#    openjdk8-jre \
#    wget \
    
    #wget -O https://www.ubnt.com/downloads/unifi/$UNIFI_VERSION/unifi_sysvinit_all.deb
    #apk add --allow-untrusted unifi_sysvinit_all.deb
    #wget -nv https://www.ubnt.com/downloads/unifi/$UNIFI_VERSION/unifi_sysvinit_all.deb && \
    #dpkg --install unifi_sysvinit_all.deb
    #mkdir /root -p \
    #wget https://dl.ubnt.com/unifi/$UNIFI_VERSION/UniFi.unix.zip 
    #wget -nv https://www.ubnt.com/downloads/unifi/5.6.2-224554000b/UniFi.unix.zip
    #curl -L -o UniFi.unix.zip https://www.ubnt.com/downloads/unifi/5.6.2-224554000b/UniFi.unix.zip
    #/home/UniFi.unix.zip
    
    #VOLUME /usr/lib/unifi/data
    
    #WORKDIR /usr/lib/unifi






