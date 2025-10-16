# https://hub.docker.com/_/wordpress/
FROM wordpress:6.8.3-php8.4-apache

RUN apt update

RUN apt install -y default-mysql-client
RUN apt install -y unzip
RUN apt install -y pv
RUN apt install -y git
RUN apt install -y rsync
RUN apt install -y wget
RUN apt install -y subversion

RUN pecl install xdebug

# wp-cli https://wp-cli.org/#installing
RUN curl -O https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar \
 && chmod +x wp-cli.phar \
 && mv wp-cli.phar /usr/local/bin/wp \
 && mkdir -p /var/www/.wp-cli/cache

RUN adduser --disabled-password --gecos "" "dev" \
 && chown -R dev:dev /var/www

RUN cp /usr/local/etc/php/php.ini-production /usr/local/etc/php/php.ini
RUN sed -i 's/upload_max_filesize = 2M/upload_max_filesize = 5M/' /usr/local/etc/php/php.ini

#COPY --chmod=644 --chown=dev:dev ./config/.htaccess /var/www/html/.htaccess
COPY --chmod=644 --chown=root:root ./config/my-apache-config.conf /etc/apache2/conf-available/my-apache-config.conf
#COPY --chmod=644 --chown=root:root ./config/rsyncd.conf /etc/rsyncd.conf
#COPY --chmod=644 --chown=root:root ./config/xdebug.ini /usr/local/etc/php/conf.d/docker-php-ext-xdebug.ini
#COPY --chmod=755 --chown=root:root ./config/docker-entrypoint-before.bash /usr/local/bin/docker-entrypoint-before.bash
RUN a2enconf my-apache-config

ENV WORDPRESS_CONFIG_EXTRA="if (file_exists('/var/www/html/wp-content/wp-config-extra.php')) require_once '/var/www/html/wp-content/wp-config-extra.php';"
ENV APACHE_LOG_DIR="/vol/log/apache2"
ENV APACHE_RUN_USER="dev"
ENV APACHE_RUN_GROUP="dev"
ENV APACHE_SERVER_NAME="localhost"
ENV ENV="production"

# "wp-content:/var/www/html/wp-content"
# "./volumes/wp:/vol"
VOLUME ["/var/www/html/wp-content", "/vol"]

# LABEL org.opencontainers.image.source="https://github.com/dayan3847/docker"
#LABEL org.opencontainers.image.description="WordPress Container Image with WP-CLI"
