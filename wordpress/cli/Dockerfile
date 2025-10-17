# https://hub.docker.com/_/wordpress/
# WordPress Version
ARG V="6.8.3"
FROM wordpress:${V}-fpm-alpine AS build

# This is to ensure copy wp-congig.php if not exists
ENV WORDPRESS_CONFIG="1"

RUN bash "/usr/local/bin/docker-ensure-installed.sh"

FROM wordpress:cli-2.12.0

USER root

RUN adduser -D "wp"
RUN chown -R wp:wp /var/www

COPY --from=build --chown=wp:wp /var/www/html /var/www/html

RUN cp /usr/local/etc/php/php.ini-development /usr/local/etc/php/php.ini
RUN sed -i 's/upload_max_filesize = 2M/upload_max_filesize = 5M/' /usr/local/etc/php/php.ini

ENV WORDPRESS_CONFIG_EXTRA="if(file_exists('/var/www/html/wp-content/wp-config-extra.php')) require_once '/var/www/html/wp-content/wp-config-extra.php';"
ENV ENV="production"

USER "wp"

VOLUME ["/var/www/html/wp-content", "/vol"]

# docker pull wordpress:cli
# docker image inspect wordpress:cli --format='{{json .Config.Entrypoint}}'
# docker image inspect wordpress:cli --format='{{json .Config.Cmd}}'
ENTRYPOINT []
CMD ["sleep", "infinity"]
