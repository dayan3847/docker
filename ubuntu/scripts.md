````shell
docker pull ubuntu:latest
````

````shell
docker run -it --rm ubuntu bash
````

## build

````shell
docker build -t "dayan3847/ubuntu" .
````

````shell
docker build --no-cache -t "dayan3847/ubuntu" .
````

````shell
docker push "dayan3847/ubuntu"
````

````shell
docker pull "dayan3847/ubuntu"
````

````shell
docker run --rm "dayan3847/ubuntu" id
````

````shell
docker run --rm "dayan3847/ubuntu" pwd
````

````shell
docker run --rm "dayan3847/ubuntu" ls -la
````

````shell
docker run -it --rm "dayan3847/ubuntu" bash
````

## Example

````shell
docker run --rm -v "${PWD}/:/home/ubuntu/workspace/" "dayan3847/ubuntu" ls -la
````
