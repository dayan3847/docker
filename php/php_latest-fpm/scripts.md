````shell
docker pull php:fpm
````

````shell
docker run -it --rm php:fpm bash
````

````shell
docker build -t "dayan3847/php:fpm" .
````

````shell
docker push "dayan3847/php:fpm"
````

````shell
docker run -it --rm "dayan3847/php:fpm" id
````

````shell
docker run -it --rm "dayan3847/php:fpm" pwd
````

````shell
docker run -it --rm "dayan3847/php:fpm" bash
````

````shell
docker run --rm -v "$PWD:/var/www/html" "dayan3847/php:fpm" ls -la
````
