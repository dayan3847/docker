#!/bin/bash

set -ex

docker run --rm -it -v "$PWD/files:/app" -w "/app" wordpress:6.8.2-php8.4-apache cp /usr/local/bin/docker-entrypoint.sh /app/
docker run --rm -it -v "$PWD/files:/app" -w "/app" wordpress:6.8.2-php8.4-apache cp /usr/src/wordpress/wp-config-docker.php /app/
docker run --rm -it -v "$PWD/files:/app" -w "/app" wordpress:6.8.2-php8.4-apache cp /usr/src/wordpress/.htaccess /app/

docker run --rm -it -v "$PWD/files:/app" -w "/app" wordpress:6.8.2-php8.4-apache chown -R www-data:www-data /app
