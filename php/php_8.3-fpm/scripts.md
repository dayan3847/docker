````shell
docker pull php:8.3-fpm
````

````shell
docker run -it --rm php:8.3 bash
````

````shell
docker build -t "dayan3847/php:8.3-fpm" .
````

````shell
docker push "dayan3847/php:8.3-fpm"
````

````shell
docker run --rm "dayan3847/php:8.3-fpm" id
````

````shell
docker run --rm "dayan3847/php:8.3-fpm" pwd
````

````shell
docker run -it --rm "dayan3847/php:8.3-fpm" bash
````

````shell
docker run -u root -it --rm "dayan3847/php:8.3-fpm" bash
````

````shell
docker run --rm -v "$PWD:/var/www/html" "dayan3847/php:8.3-fpm" ls -la
````
