FROM php:8.3-fpm

RUN apt update
RUN apt upgrade -y

# dependencies extensions
RUN apt install -y libicu-dev # intl
RUN apt install -y libpng-dev libjpeg-dev libfreetype6-dev zlib1g-dev # gd
RUN apt install -y libzip-dev # zip

# extensions
RUN docker-php-ext-install pdo_mysql
RUN docker-php-ext-install intl
RUN docker-php-ext-install gd
RUN docker-php-ext-install zip

# Install composer
RUN php -r "copy('https://getcomposer.org/installer', 'composer-setup.php');" \
    && php -r "if (hash_file('sha384', 'composer-setup.php') === 'dac665fdc30fdd8ec78b38b9800061b4150413ff2e3b6f88543c636f7cd84f6db9189d43a81e5503cda447da73c7e5b6') { echo 'Installer verified'; } else { echo 'Installer corrupt'; unlink('composer-setup.php'); } echo PHP_EOL;" \
    && php composer-setup.php \
    && php -r "unlink('composer-setup.php');" \
    && mv composer.phar /usr/local/bin/composer

RUN mkdir /var/www/.composer && chown www-data:www-data /var/www/.composer

WORKDIR /var/www/html

VOLUME [ "/var/www/html" ]

CMD ["php-fpm"]
