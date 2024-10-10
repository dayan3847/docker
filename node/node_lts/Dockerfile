FROM node:lts

RUN npm install -g npm

RUN npm install -g pnpm

RUN mkdir -p /var/www/app/
RUN mkdir -p /var/www/.npm/_logs/
RUN chown -R www-data:www-data /var/www

WORKDIR /var/www/app/

VOLUME [ "/var/www/app/" ]

USER www-data
