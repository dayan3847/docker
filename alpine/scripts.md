````shell
docker pull alpine:latest
````

````shell
docker run -it --rm alpine sh
````

````shell
docker build -t "dayan3847/alpine:bash" ./bash
````

````shell
docker push "dayan3847/alpine:bash"
````

````shell
docker run --rm dayan3847/alpine:bash id
````

````shell
docker run --rm dayan3847/alpine:bash pwd
````

````shell
docker run --rm -v "$PWD:/home/app" dayan3847/alpine:bash ls -la .
````

````shell
docker run -it --rm dayan3847/alpine:bash bash
````
