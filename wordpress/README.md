## Pull

```shell
docker pull wordpress:latest
```

## Production Environment

```shell
docker build -t "dayan3847/wordpress" -f ./wordpress.Dockerfile .
```

### build without cache

```shell
docker build --no-cache -t "dayan3847/wordpress" -f wordpress.Dockerfile .
```

## Development Environment

```shell
docker build -t "dayan3847/wordpress:dev" -f wordpress.dev.Dockerfile .
```

### build without cache

```shell
docker build --no-cache -t "dayan3847/wordpress:dev" -f wordpress.dev.Dockerfile .
```

## Push

```shell
docker push "dayan3847/wordpress"
```

```shell
docker push "dayan3847/wordpress:dev"
```

## Test Dev

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
