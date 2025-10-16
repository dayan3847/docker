# WordPress Docker

## `latest` (`6.8.3`)

```bash
docker pull wordpress:6.8.3-apache
docker pull wordpress:6.8.3-fpm-alpine
```

### apache

```bash
docker build --debug --tag "dayan3847/wordpress:6.8.3-apache" --file "wordpress-6.8.3-apache.Dockerfile" .
```

### cli

```bash
docker build --debug --tag "dayan3847/wordpress:6.8.3-cli" --file "wordpress-cli.Dockerfile" --build-arg "V=6.8.3" .
```

### apache dev

```bash
docker build --debug --tag "dayan3847/wordpress:6.8.3-apache-dev" --file "wordpress-6.8.3-apache-dev.Dockerfile" .
```

## `6.8.2`

```bash
docker pull wordpress:6.8.2-apache
```

### apache

```bash
docker build --debug --tag "dayan3847/wordpress:6.8.2-apache" --file "wordpress-6.8.2-apache.Dockerfile" .
```

### cli

```bash
docker build --debug --tag "dayan3847/wordpress:6.8.2-cli" --file "wordpress-cli.Dockerfile" --build-arg "V=6.8.2" .
```

### apache dev

```bash
docker build --debug --tag "dayan3847/wordpress:6.8.2-apache-dev" --file "wordpress-6.8.2-apache-dev.Dockerfile" .
```

# old

```bash
docker run --rm "dayan3847/wordpress:6.8.3-php8.4-apache-cli-dev"
```

```bash
docker push "dayan3847/wordpress:6.8.3-php8.4-apache-cli-dev"
```

```bash
docker pull "dayan3847/wordpress:6.8.3-php8.4-apache-cli-dev"
```

```bash
docker pull wordpress:6.8.3-php8.4-apache
```

```bash
docker build -t "dayan3847/wordpress:6.8.3-php8.4-apache-cli" .
```

```bash
docker run --rm "dayan3847/wordpress:6.8.3-php8.4-apache-cli"
```

```bash
docker push "dayan3847/wordpress:6.8.3-php8.4-apache-cli"
```

```bash
docker pull "dayan3847/wordpress:6.8.3-php8.4-apache-cli"
```
