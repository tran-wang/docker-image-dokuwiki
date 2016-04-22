FROM busybox
MAINTAINER truan wang <admin@truan.wang>

ENV DOKUWIKI_VERSION 2015-08-10a

ADD http://download.dokuwiki.org/src/dokuwiki/dokuwiki-$DOKUWIKI_VERSION.tgz /tmp/dokuwiki.tgz

RUN mkdir -p /var/www/dokuwiki \
    && cd /var/www/dokuwiki \
    && tar xzf "/tmp/dokuwiki.tgz" \
    && rm "/tmp/dokuwiki.tgz" \
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
