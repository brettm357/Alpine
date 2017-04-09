FROM alpine:3.5
MAINTAINER brettm357@me.com


RUN apk add --no-cache mysql-client
ENTRYPOINT ["mysql"]




