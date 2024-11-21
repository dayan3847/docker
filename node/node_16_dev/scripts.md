````shell
docker build -t "dayan3847/node:16-dev" .
````

````shell
docker push "dayan3847/node:16-dev"
````

````shell
docker pull "dayan3847/node:16-dev"
````

````shell
docker run --rm "dayan3847/node:16-dev" id
````

````shell
docker run --rm "dayan3847/node:16-dev" pwd
````

## Run

````shell
docker run -it --rm "dayan3847/node:16-dev" bash
````

````shell
docker run -it --name "dev_node_16" "dayan3847/node:16-dev" bash
````
