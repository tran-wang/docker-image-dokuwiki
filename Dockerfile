FROM busybox
MAINTAINER truan wang <admin@truan.wang>

ENV DOKUWIKI_VERSION 2015-08-10a

RUN mkdir -p /var/www \
    && wget -q -O - http://download.dokuwiki.org/src/dokuwiki/dokuwiki-$DOKUWIKI_VERSION.tgz \
    | tar -xzC /var/www \
    && mv /var/www/dokuwiki-$DOKUWIKI_VERSION /var/www/dokuwiki \
    && chown -R www-data:www-data /var/www

VOLUME [ \
    "/var/www/dokuwiki/data/pages", \
    "/var/www/dokuwiki/data/meta", \
    "/var/www/dokuwiki/data/media", \
    "/var/www/dokuwiki/data/media_attic", \
    "/var/www/dokuwiki/data/media_meta", \
    "/var/www/dokuwiki/data/attic", \
    "/var/www/dokuwiki/conf", \
    "/var/log" \
]
