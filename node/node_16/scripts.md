````shell
docker pull node:16.3.0
````

````shell
docker run -it --rm node:16.3.0 bash
````

## build

````shell
docker build -t "dayan3847/node:16" .
````

````shell
docker build --no-cache -t "dayan3847/node:16" .
````

````shell
docker push "dayan3847/node:16"
````

````shell
docker pull "dayan3847/node:16"
````

````shell
docker run --rm "dayan3847/node:16" id
````

````shell
docker run --rm "dayan3847/node:16" pwd
````

````shell
docker run -it --rm "dayan3847/node:16" bash
````

## Create for devcontainer

````shell
docker run --name "node_16" -it "dayan3847/node:16" bash
````
