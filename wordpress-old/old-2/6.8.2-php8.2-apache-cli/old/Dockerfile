# https://hub.docker.com/_/wordpress/
FROM wordpress:6.8.2-php8.2-apache

RUN apt update

RUN apt install -y default-mysql-client
RUN apt install -y unzip
RUN apt install -y pv
RUN apt install -y git
RUN apt install -y rsync

RUN pecl install xdebug

# wp-cli
RUN curl -O https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar \
    && chmod +x wp-cli.phar \
    && mv wp-cli.phar /usr/local/bin/wp
RUN mkdir -p /var/www/.wp-cli/cache
RUN chown -R www-data:www-data /var/www/.wp-cli

COPY --chown=root:root --chmod=755 ./docker-entrypoint.bash /usr/local/bin/docker-entrypoint.bash
COPY --chown=www-data:www-data --chmod=644 ./wp-config-extra.php /var/www/html/wp-config-extra.php
COPY --chown=root:root ./dev/rsyncd.conf /etc/rsyncd.conf
COPY --chown=www-data:www-data ./.htaccess /var/www/html/.htaccess

ENV ENV=local
ENV APACHE_LOG_DIR=/var/www/vol/svc/log/apache2

COPY --chown=root:root ./dev/xdebug.ini /usr/local/etc/php/conf.d/docker-php-ext-xdebug.ini

RUN cp /usr/local/etc/php/php.ini-production /usr/local/etc/php/php.ini
RUN sed -i 's/upload_max_filesize = 2M/upload_max_filesize = 5M/' /usr/local/etc/php/php.ini

# docker image inspect wordpress:6.8.2-php8.2-apache --format='{{json .Config.Entrypoint}}'
ENTRYPOINT ["docker-entrypoint.bash"]
# docker image inspect wordpress:6.8.2-php8.2-apache --format='{{json .Config.Cmd}}'
CMD ["apache2-foreground"]
