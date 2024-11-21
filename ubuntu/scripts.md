````shell
docker pull ubuntu:latest
````

````shell
docker run -it --rm ubuntu bash
````

````shell
docker build -t "dayan3847/ubuntu" .
````

````shell
docker push "dayan3847/ubuntu"
````

````shell
docker run --rm dayan3847/ubuntu id
````

````shell
docker run --rm dayan3847/ubuntu pwd
````

````shell
docker run --rm -v "${PWD}:/home/ubuntu/app" dayan3847/ubuntu ls -la .
````

````shell
docker run -it --rm dayan3847/ubuntu bash
````

````shell
docker run -it --rm -v "${PWD}:/home/app" -w /home/app ubuntu sh
````