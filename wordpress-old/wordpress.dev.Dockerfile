FROM dayan3847/wordpress

# install xdebug
RUN pecl install xdebug
RUN docker-php-ext-enable xdebug
COPY ./dev/99-xdebug.ini /usr/local/etc/php/conf.d/

# install git
RUN apt install -y git
