FROM php:latest

RUN apt update && apt upgrade -y

# Install composer

RUN php -r "copy('https://getcomposer.org/installer', 'composer-setup.php');" \
    && php -r "if (hash_file('sha384', 'composer-setup.php') === 'dac665fdc30fdd8ec78b38b9800061b4150413ff2e3b6f88543c636f7cd84f6db9189d43a81e5503cda447da73c7e5b6') { echo 'Installer verified'; } else { echo 'Installer corrupt'; unlink('composer-setup.php'); } echo PHP_EOL;" \
    && php composer-setup.php \
    && php -r "unlink('composer-setup.php');" \
    && mv composer.phar /usr/local/bin/composer


RUN pear install PHP_CodeSniffer

RUN mkdir /var/www/.composer && chown www-data:www-data /var/www/.composer

RUN apt install -y git zip unzip p7zip-full pv wget

# Install PHPUnit
RUN wget -O phpunit.phar https://phar.phpunit.de/phpunit-10.phar \
    && chmod +x phpunit.phar \
    && mv phpunit.phar /usr/local/bin/phpunit

USER www-data

WORKDIR /var/www/html/app

VOLUME [ "/var/www/html/app" ]
