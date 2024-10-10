````shell
docker pull node:lts
````

````shell
docker run -it --rm node:lts sh
````

````shell
docker build -t "dayan3847/node:lts" .
````

````shell
docker push "dayan3847/node:lts"
````

````shell
docker pull "dayan3847/node:lts"
````

````shell
docker run --rm "dayan3847/node:lts" id
````

````shell
docker run --rm "dayan3847/node:lts" pwd
````

````shell
docker run -it --rm "dayan3847/node:lts" bash
````

````shell
docker run --rm -v "$PWD:/app/" "dayan3847/node:lts" ls -la
````
