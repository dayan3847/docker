FROM php:7.4-fpm

RUN apt update
RUN apt upgrade -y

# Install composer
RUN php -r "copy('https://getcomposer.org/installer', 'composer-setup.php');" \
 && php -r "if (hash_file('sha384', 'composer-setup.php') === 'ed0feb545ba87161262f2d45a633e34f591ebb3381f2e0063c345ebea4d228dd0043083717770234ec00c5a9f9593792') { echo 'Installer verified'.PHP_EOL; } else { echo 'Installer corrupt'.PHP_EOL; unlink('composer-setup.php'); exit(1); }" \
 && php composer-setup.php \
 && php -r "unlink('composer-setup.php');" \
 && mv composer.phar /usr/local/bin/composer

# Install wp-cli
RUN curl -O https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar \
    && chmod +x wp-cli.phar \
    && mv wp-cli.phar /usr/local/bin/wp

# linea  alinea
RUN apt install -y libfreetype6-dev
RUN apt install -y libjpeg62-turbo-dev
RUN apt install -y libpng-dev
RUN apt install -y libzip-dev
RUN apt install -y libxml2-dev
RUN apt install -y libicu-dev
RUN apt install -y libssl-dev
RUN apt install -y libmagickwand-dev
RUN apt install -y libonig-dev
RUN apt install -y libxslt1-dev
RUN apt install -y libffi-dev
RUN apt install -y libbz2-dev
RUN apt install -y libgmp-dev
RUN apt install -y libldap2-dev
RUN apt install -y libedit-dev
RUN apt install -y libreadline-dev
RUN apt install -y zlib1g-dev
RUN apt install -y git
RUN apt install -y unzip
RUN apt install -y curl
RUN apt install -y imagemagick

RUN docker-php-ext-configure gd --with-freetype --with-jpeg

RUN docker-php-ext-install -j$(nproc) bcmath
RUN docker-php-ext-install -j$(nproc) calendar
RUN docker-php-ext-install -j$(nproc) exif
RUN docker-php-ext-install -j$(nproc) gd
RUN docker-php-ext-install -j$(nproc) gettext
RUN docker-php-ext-install -j$(nproc) intl
# RUN docker-php-ext-install -j$(nproc) imap
RUN docker-php-ext-install -j$(nproc) mysqli
RUN docker-php-ext-install -j$(nproc) pdo_mysql
RUN docker-php-ext-install -j$(nproc) pcntl
RUN docker-php-ext-install -j$(nproc) shmop
RUN docker-php-ext-install -j$(nproc) soap
RUN docker-php-ext-install -j$(nproc) sockets
RUN docker-php-ext-install -j$(nproc) sysvmsg
RUN docker-php-ext-install -j$(nproc) sysvsem
RUN docker-php-ext-install -j$(nproc) sysvshm
RUN docker-php-ext-install -j$(nproc) tokenizer
RUN docker-php-ext-install -j$(nproc) xsl
RUN docker-php-ext-install -j$(nproc) xmlrpc
RUN docker-php-ext-install -j$(nproc) zip
RUN docker-php-ext-install -j$(nproc) opcache

# Instalar la extensión imagick (para procesamiento de imágenes)
RUN pecl install imagick
RUN docker-php-ext-enable imagick

# Install xdebug
RUN pecl install xdebug-3.1.6
RUN docker-php-ext-enable xdebug

# dig
RUN apt install -y dnsutils
# pv
RUN apt install -y pv

# mariadb-client
RUN apt install -y mariadb-client

# Limpiar los archivos temporales de instalación
RUN apt-get clean && rm -rf /var/lib/apt/lists/*

WORKDIR /var/www/html

VOLUME [ "/var/www/html" ]

EXPOSE 9000

CMD ["php-fpm"]
