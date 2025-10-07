FROM php:8.4-cli

RUN apt update
RUN apt upgrade -y

RUN apt install -y git
RUN apt install -y unzip

# Install PHP extensions
## intl
RUN apt install -y libicu-dev && docker-php-ext-install intl
## gd
RUN apt install -y libpng-dev libjpeg-dev libfreetype6-dev zlib1g-dev && docker-php-ext-install gd
## zip
RUN apt install -y libzip-dev && docker-php-ext-install zip

ARG USERNAME=dev
ARG GID=1000
RUN groupadd -g $GID $USERNAME
ARG UID=1000
RUN useradd -u $UID -g $GID -m -s /bin/bash $USERNAME

ENV COMPOSER_HOME=/home/$USERNAME/.composer
ENV PATH="$COMPOSER_HOME/vendor/bin:$PATH"

RUN mkdir -p $COMPOSER_HOME \
    && chown -R $USERNAME:$USERNAME $COMPOSER_HOME

# Install composer (https://getcomposer.org/download/)
RUN php -r "copy('https://getcomposer.org/installer', 'composer-setup.php');" \
    && php -r "if (hash_file('sha384', 'composer-setup.php') === 'dac665fdc30fdd8ec78b38b9800061b4150413ff2e3b6f88543c636f7cd84f6db9189d43a81e5503cda447da73c7e5b6') { echo 'Installer verified'.PHP_EOL; } else { echo 'Installer corrupt'.PHP_EOL; unlink('composer-setup.php'); exit(1); }" \
    && php composer-setup.php \
    && php -r "unlink('composer-setup.php');" \
    && mv composer.phar /usr/local/bin/composer

USER $USERNAME

RUN /usr/local/bin/composer global require laravel/installer

WORKDIR /app/
