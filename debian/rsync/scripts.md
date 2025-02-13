````shell
docker pull debian:latest
````

````shell
docker run -it --rm debian bash
````

## build

````shell
docker build -t "dayan3847/rsync" .
````

````shell
docker build --no-cache -t "dayan3847/rsync" .
````

````shell
docker push "dayan3847/rsync"
````

````shell
docker pull "dayan3847/rsync"
````

````shell
docker run -it --rm "dayan3847/rsync" bash
````
