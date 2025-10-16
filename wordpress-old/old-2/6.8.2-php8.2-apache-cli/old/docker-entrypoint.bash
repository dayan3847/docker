#!/bin/bash

set -ex

if [[ "master" != "${ENV}" && "staging" != "${ENV}" && "local" != "${ENV}" ]]; then
  echo "Invalid ENV (ENV): ${ENV}. Use: <master|staging|local>"
  exit 1
fi

if [[ "master" == "${ENV}" ]]; then
  APACHE_SERVER_NAME="wp.yomiclick.com"
else
  APACHE_SERVER_NAME="wp.${ENV}.yomiclick.com"
fi

if ! grep -q "^ServerName " /etc/apache2/apache2.conf; then echo "\nServerName \${APACHE_RUN_USER}\n" | tee -a /etc/apache2/apache2.conf; fi

# ONLY DEV
if [[ "local" == "${ENV}" ]]; then
  if [[ ! -f /var/www/vol/log/xdebug/xdebug.log ]]; then
    mkdir -p /var/www/vol/log/xdebug/
    touch /var/www/vol/log/xdebug/xdebug.log
  fi

  chmod -R g+w /var/www

  rsync --daemon --detach --port=873
fi

chown -R www-data:www-data /var/www

# docker image inspect wordpress:6.8.2-php8.2-apache --format='{{json .Config.Entrypoint}}'
docker-entrypoint.sh "$@"
