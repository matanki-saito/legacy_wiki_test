FROM php:7.2-alpine

RUN apk add --no-cache openssh-client bash curl rsync ca-certificates  && rm -rf /var/cache/apk/*

COPY ./pukiwiki/ /var/www/html/

RUN cp -a /var/www/html/efsdata /var/www/html/testwikidata

RUN cd /var/www/html/testwikidata

RUN mkdir -p -m 777 wiki
RUN mkdir -p -m 777 diff
RUN mkdir -p -m 777 backup
RUN mkdir -p -m 777 cache
RUN mkdir -p -m 777 attach
RUN mkdir -p -m 777 counter
RUN mkdir -p -m 777 trackback

RUN (crontab -l; echo "*/15 * * * * cp /var/www/html/testwikidata /var/www/html/efsdata > /dev/null 2>&1") | crontab -

EXPOSE 80