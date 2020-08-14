FROM php:7.2-apache

COPY ./pukiwiki/ /var/www/html/
COPY ./docker-entrypoint.sh /

RUN chmod +x /docker-entrypoint.sh

ENTRYPOINT ["/docker-entrypoint.sh"]

EXPOSE 80