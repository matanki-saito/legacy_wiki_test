FROM php:7.2-alpine

RUN apk add --no-cache openssh-client bash curl rsync ca-certificates  && rm -rf /var/cache/apk/*

COPY ./pukiwiki/ /var/www/html/

RUN cd /var/www/html

RUN mkdir -p -m 777 testwikidata/wiki
RUN mkdir -p -m 777 testwikidata/diff
RUN mkdir -p -m 777 testwikidata/backup
RUN mkdir -p -m 777 testwikidata/cache
RUN mkdir -p -m 777 testwikidata/attach
RUN mkdir -p -m 777 testwikidata/counter
RUN mkdir -p -m 777 testwikidata/trackback

EXPOSE 80