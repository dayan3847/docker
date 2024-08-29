````shell
docker pull php:7.4-fpm-alpine
````

````shell
docker run -it --rm php:7.4-fpm-alpine sh
````

````shell
docker build -t "dayan3847/php:7.4-dev" .
````

````shell
docker push "dayan3847/php:7.4-dev"
````

````shell
docker run --rm "dayan3847/php:7.4-dev" id
````

````shell
docker run --rm "dayan3847/php:7.4-dev" pwd
````

````shell
docker run -it --rm "dayan3847/php:7.4-dev" bash
````

````shell
docker run --rm -v "$PWD:/var/www/html" "dayan3847/php:7.4-dev" ls -la
````
