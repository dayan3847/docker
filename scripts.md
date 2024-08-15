````shell
docker run -it --rm node bash
````

# node

````shell
docker build -t "dayan3847/node" ./node
````

````shell
docker push "dayan3847/node"
````

````shell
docker run -it --rm dayan3847/node bash
````

````shell
docker run -it --rm -v "$PWD:/home/node/app" dayan3847/node node --version
````
