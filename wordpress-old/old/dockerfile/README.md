## give permissions to 1000 for edit on wp

````shell
sudo setfacl -R -m u:1000:rwx ./wp
````

## Development Environment

```shell
docker pull wordpress:latest
```

```shell
docker build -t "dayan3847/wordpress:dev" ./wordpress_dev
```

## build without cache

```shell
docker build --no-cache -t "dayan3847/wordpress:dev" ./wordpress_dev
```


```shell
docker push "dayan3847/wordpress:dev"
```

```shell
docker run --rm --user www-data -it dayan3847/wordpress:dev bash
```

## test

```shell
docker build -t "dayan3847/wordpress:test" ./wordpress_dev
```

```shell
docker image rm "dayan3847/wordpress:test"
```

```shell
docker run --rm --user www-data -it dayan3847/wordpress:test sh
```

```shell
docker run --rm --user www-data dayan3847/wordpress:test php --version
```

```shell
docker run --rm --user www-data dayan3847/wordpress:test wp --version
```

```shell
docker run --rm --user www-data dayan3847/wordpress:test composer --version
```
