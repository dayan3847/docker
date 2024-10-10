````shell
docker pull php:8.3-fpm
````

````shell
docker run -it --rm php:8.3-fpm bash
````

````shell
docker build -t "dayan3847/php:8.3-fpm-dev" .
````

````shell
docker push "dayan3847/php:8.3-fpm-dev"
````

````shell
docker run --rm "dayan3847/php:8.3-fpm-dev" id
````

````shell
docker run --rm "dayan3847/php:8.3-fpm-dev" pwd
````

````shell
docker run -it --rm "dayan3847/php:8.3-fpm-dev" bash
````

````shell
docker run --rm -v "$PWD:/var/www/html" "dayan3847/php:8.3-fpm-dev" ls -la
````
