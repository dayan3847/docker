# https://hub.docker.com/_/wordpress/
FROM wordpress:6.8.2-php8.4-apache

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
COPY --chown=www-data:www-data --chmod=644 ./wp-config-docker.php  /var/www/html/wp-config-docker.php

ENV APACHE_LOG_DIR=/var/www/vol/svc/log/apache2

RUN cp /usr/local/etc/php/php.ini-production /usr/local/etc/php/php.ini
RUN sed -i 's/upload_max_filesize = 2M/upload_max_filesize = 5M/' /usr/local/etc/php/php.ini

#ENV APACHE_SERVER_NAME;

# "./volumes/www/html/wp-content:/var/www/html/wp-content"
# "./volumes/www/vol/svc:/var/www/vol/svc"
VOLUME ["/var/www/html/wp-content", "/var/www/vol/svc"]

ENTRYPOINT ["docker-entrypoint.bash"]
# docker image inspect wordpress:6.8.2-php8.4-apache --format='{{json .Config.Cmd}}'
CMD ["apache2-foreground"]
