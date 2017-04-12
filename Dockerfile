FROM alpine:latest
MAINTAINER brettm357@me.com

#ENV HOME /root
#ENV UNIFI_VERSION 5.6.2-224554000b

#RUN @testing http://nl.alpinelinux.org/alpine/edge/testing

#RUN echo http://nl.alpinelinux.org/alpine/edge/testing >> /etc/apk/repositories 

#RUN apk upgrade --update && \

#    apk --no-cache add \
#    dpkg \
#    curl \
#    jsvc \
#    mongodb \
#    openjdk8-jre \
#    wget \
RUN apk add --no-cache --virtual=build-dependencies \
	curl \
	unzip && \

 # install runtime packages
    apk add --no-cache \
	openjdk8-jre-base && \

 # install ubooquity
    mkdir -p \
	/opt/unifi && \
#/opt/ubooquity/fonts && \
#curl -o \
# /tmp/UniFi.unix.zip -L \
#	"http://vaemendis.net/ubooquity/downloads/Ubooquity-${UBOOQUITY_VER}.zip" && \
# unzip /tmp/ubooquity.zip -d /opt/ubooquity && \

    
    #wget -O https://www.ubnt.com/downloads/unifi/$UNIFI_VERSION/unifi_sysvinit_all.deb
    #apk add --allow-untrusted unifi_sysvinit_all.deb
    #wget -nv https://www.ubnt.com/downloads/unifi/$UNIFI_VERSION/unifi_sysvinit_all.deb && \
    #dpkg --install unifi_sysvinit_all.deb
    #mkdir /root -p \
    #wget https://dl.ubnt.com/unifi/$UNIFI_VERSION/UniFi.unix.zip 
    #wget -nv https://www.ubnt.com/downloads/unifi/5.6.2-224554000b/UniFi.unix.zip
    curl -o \
    /tmp/unifi.zip -L "https://www.ubnt.com/downloads/unifi/5.6.2-224554000b/UniFi.unix.zip" && \
    unzip /tmp/unifi.zip -d /opt/unifi && \
    
    # Cleanup  
    apk del --purge \
    build-dependencies && \
    rm -rf /tmp/*
    #/home/UniFi.unix.zip
    
    #VOLUME /usr/lib/unifi/data
    
    #WORKDIR /usr/lib/unifi






