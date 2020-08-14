#!/bin/sh

cp -a /var/www/html/efsdata /var/www/html/testwikidata

cd /var/www/html/testwikidata

mkdir -p -m 777 wiki
mkdir -p -m 777 diff
mkdir -p -m 777 backup
mkdir -p -m 777 cache
mkdir -p -m 777 attach
mkdir -p -m 777 counter
mkdir -p -m 777 trackback

(crontab -l; echo "*/15 * * * * cp /var/www/html/testwikidata /var/www/html/efsdata > /dev/null 2>&1") | crontab -
