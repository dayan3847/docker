````shell
docker pull node:lts
````

````shell
docker run -it --rm node:lts bash
````

## build

````shell
docker build -t "dayan3847/node:lts" .
````

````shell
docker build --no-cache -t "dayan3847/node:lts" .
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
docker run --rm "dayan3847/node:lts" ls -la
````

````shell
docker run -it --rm "dayan3847/node:lts" bash
````

## Create for devcontainer

````shell
docker run --name "node_lts" -it --rm "dayan3847/node:lts" bash
````
