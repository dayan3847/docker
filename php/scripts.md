````shell
docker pull php:7.4.0-fpm-alpine
````

````shell
docker run -it --rm php:7.4.0-fpm-alpine sh
````

````shell
docker build -t "dayan3847/php:7.4" ./php_7.4
````

````shell
docker push "dayan3847/php:7.4"
````

````shell
docker run --rm dayan3847/php:7.4 id
````

````shell
docker run --rm dayan3847/php:7.4 pwd
````

````shell
docker run --rm -v "$PWD:/var/www/html" dayan3847/php:7.4 ls -la .
````

````shell
docker run -it --rm dayan3847/php:7.4 bash
````

````shell
docker run -it --rm -v "$PWD:/var/www/html" dayan3847/php:7.4 bash
````
