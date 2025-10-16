# WordPress Apache Dev

## `6.8.3` (`latest`)

```bash
docker build --debug --tag "dayan3847/wordpress:6.8.3-apache-dev" --build-arg "V=6.8.3" .
```

## `6.8.2`

```bash
docker build --debug --tag "dayan3847/wordpress:6.8.2-apache-dev" --build-arg "V=6.8.2" .
```

## Pull

```bash
docker pull wordpress:6.8.3-apache
docker pull wordpress:6.8.2-apache
```

## Run

```bash
docker run --rm "dayan3847/wordpress:6.8.3-apache-dev"
```
