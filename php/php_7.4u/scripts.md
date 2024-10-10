````shell
docker pull php:7.4-fpm
````

````shell
docker run -it --rm php:7.4-fpm sh
````

````shell
docker build -t "dayan3847/php:7.4u" .
````

````shell
docker push "dayan3847/php:7.4u"
````

````shell
docker run --rm "dayan3847/php:7.4u" id
````

````shell
docker run --rm "dayan3847/php:7.4u" pwd
````

````shell
docker run -it --rm "dayan3847/php:7.4u" bash
````

````shell
docker run --rm -v "$PWD:/var/www/html" "dayan3847/php:7.4u" ls -la
````
