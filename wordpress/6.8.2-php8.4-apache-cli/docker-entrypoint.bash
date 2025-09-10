#!/bin/bash

set -ex

if [[ -n "${APACHE_SERVER_NAME}" ]]; then
  if ! grep -q "^ServerName " /etc/apache2/apache2.conf; then
    printf "\nServerName %s\n" "${APACHE_SERVER_NAME}" | tee -a /etc/apache2/apache2.conf
  fi
fi

chown -R www-data:www-data /var/www

# docker image inspect wordpress:6.8.2-php8.4-apache --format='{{json .Config.Entrypoint}}'
docker-entrypoint.sh "$@"
