FROM php:8.2-cli-alpine

COPY --from=mlocati/php-extension-installer /usr/bin/install-php-extensions /usr/local/bin/
RUN install-php-extensions zlib phar sodium tokenizer filter

ADD --chmod=755 https://github.com/humbug/php-scoper/releases/download/0.18.16/php-scoper.phar /php-scoper.phar

WORKDIR /app

ENTRYPOINT ["php", "/php-scoper.phar"]

RUN adduser -D alpine
RUN adduser -D -u 33 www-data-u

RUN adduser alpine www-data-u
RUN adduser www-data-u alpine
