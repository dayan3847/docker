FROM wordpress

RUN apt update
RUN apt full-upgrade -y

RUN apt install -y default-mysql-client

# Install composer
RUN php -r "copy('https://getcomposer.org/installer', 'composer-setup.php');" \
    && php -r "if (hash_file('sha384', 'composer-setup.php') === 'dac665fdc30fdd8ec78b38b9800061b4150413ff2e3b6f88543c636f7cd84f6db9189d43a81e5503cda447da73c7e5b6') { echo 'Installer verified'; } else { echo 'Installer corrupt'; unlink('composer-setup.php'); } echo PHP_EOL;" \
    && php composer-setup.php \
    && php -r "unlink('composer-setup.php');" \
    && mv composer.phar /usr/local/bin/composer

# Install wp-cli
RUN curl -O https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar \
    && chmod +x wp-cli.phar \
    && mv wp-cli.phar /usr/local/bin/wp

# install xdebug
RUN pecl install xdebug
RUN docker-php-ext-enable xdebug
COPY ./99-xdebug.ini /usr/local/etc/php/conf.d

## fix_www-data.bash
#COPY ./fix_www-data.bash ./fix_www-data.bash
#RUN chmod +x ./fix_www-data.bash
#RUN ./fix_www-data.bash
#RUN rm ./fix_www-data.bash

#USER www-data
