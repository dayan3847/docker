````shell
docker pull debian:stable-slim
#docker pull ubuntu
````

````shell
docker build -t "dayan3847/rsync" .
````

````shell
docker push "dayan3847/rsync"
````

````shell
docker pull "dayan3847/rsync"
````

````shell
docker run --rm --name='test-rsync' -p "873:873" "dayan3847/rsync"
````

# Root folder
````shell
rsync "rsync://rsync@$(docker inspect -f '{{range .NetworkSettings.Networks}}{{.IPAddress}}{{end}}' 'test-rsync'):873/"
````

# FTP folder
````shell
rsync "rsync://rsync@$(docker inspect -f '{{range .NetworkSettings.Networks}}{{.IPAddress}}{{end}}' 'test-rsync'):873/ftp/"
````
