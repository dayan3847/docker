## Development Environment

```shell
docker pull wordpress:latest
```

```shell
docker build -t "dayan3847/wordpress:dev" .
```

## build without cache

```shell
docker build --no-cache -t "dayan3847/wordpress:dev" .
```

```shell
docker push "dayan3847/wordpress:dev"
```

```shell
docker run --rm -it dayan3847/wordpress:dev bash
```

```shell
docker run --rm --user www-data dayan3847/wordpress:dev php --version
```

```shell
docker run --rm --user www-data dayan3847/wordpress:dev wp --version
```

```shell
docker run --rm --user www-data dayan3847/wordpress:dev composer --version
```
