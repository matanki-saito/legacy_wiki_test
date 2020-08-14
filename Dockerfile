FROM php:7.2-alpine

RUN apk add --no-cache openssh-client bash curl rsync ca-certificates  && rm -rf /var/cache/apk/*

COPY ./pukiwiki/ /var/www/html/
COPY ./docker-entrypoint.sh /

ENTRYPOINT ["/docker-entrypoint.sh"]

EXPOSE 80