# WordPress CLI

## WP-CLI with WordPress version: `6.8.3`

```bash
docker --debug build --tag "dayan3847/wordpress:6.8.3-cli" --build-arg "V=6.8.3" .
```

## WP-CLI with WordPress version: `6.8.2`

```bash
docker build --debug --tag "dayan3847/wordpress:6.8.2-cli" --build-arg "V=6.8.2" .
```

## Pull

```bash
docker pull wordpress:cli-2.12.0
docker pull wordpress:6.8.3-fpm-alpine
docker pull wordpress:6.8.2-fpm-alpine
```

```bash
docker run -itd --rm \
  --name wp-cli \
  "dayan3847/wordpress:6.8.3-cli"
```
