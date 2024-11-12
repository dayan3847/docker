````shell
docker pull node:lts
````

````shell
docker run -it --rm node:lts sh
````

````shell
docker build -t "dayan3847/node:lts-dev" .
````

````shell
docker push "dayan3847/node:lts-dev"
````

````shell
docker pull "dayan3847/node:lts-dev"
````

````shell
docker run --rm "dayan3847/node:lts-dev" id
````

````shell
docker run --rm "dayan3847/node:lts-dev" pwd
````

````shell
docker run -it --rm "dayan3847/node:lts-dev" bash
````

````shell
docker run --rm -v "$PWD:/app/" "dayan3847/node:lts-dev" ls -la
````
