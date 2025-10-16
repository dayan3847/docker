# https://hub.docker.com/_/wordpress/
# WordPress Version
ARG V="6.8.3"
FROM wordpress:${V}-apache

RUN adduser --disabled-password --gecos "" "wp"
RUN chown -R wp:wp /var/www

COPY --chmod=644 --chown=root:root ./config/my-apache-config.conf /etc/apache2/conf-available/my-apache-config.conf
RUN a2enconf my-apache-config

RUN cp /usr/local/etc/php/php.ini-development /usr/local/etc/php/php.ini
RUN sed -i 's/upload_max_filesize = 2M/upload_max_filesize = 5M/' /usr/local/etc/php/php.ini

ENV WORDPRESS_CONFIG_EXTRA="if(file_exists('/var/www/html/wp-content/wp-config-extra.php')) require_once '/var/www/html/wp-content/wp-config-extra.php';"
ENV APACHE_LOG_DIR="/vol/log/apache2"
ENV APACHE_RUN_USER="wp"
ENV APACHE_RUN_GROUP="wp"
ENV APACHE_SERVER_NAME="localhost"
ENV ENV="development"

# "wp-content:/var/www/html/wp-content"
# "./volumes/wp:/vol"
VOLUME ["/var/www/html/wp-content", "/vol"]

RUN apt update

RUN apt install -y default-mysql-client
RUN apt install -y unzip
RUN apt install -y pv
RUN apt install -y git
RUN apt install -y rsync
RUN apt install -y wget
RUN apt install -y subversion

RUN pecl install xdebug

COPY --chmod=644 --chown=root:root ./config/rsyncd.conf /etc/rsyncd.conf
COPY --chmod=644 --chown=root:root ./config/xdebug.ini /usr/local/etc/php/conf.d/docker-php-ext-xdebug.ini
COPY --chmod=755 --chown=root:root ./config/docker-entrypoint-before.bash /usr/local/bin/docker-entrypoint-before.bash

# docker pull wordpress:apache
# docker image inspect wordpress:apache --format='{{json .Config.Entrypoint}}'
# docker image inspect wordpress:apache --format='{{json .Config.Cmd}}'
ENTRYPOINT ["docker-entrypoint-before.bash"]
CMD ["apache2-foreground"]
