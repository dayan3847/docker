```bash
docker pull wordpress:6.8.2-php8.4-apache
```

```bash
docker build -t "dayan3847/wordpress:6.8.2-php8.4-apache-cli" .
```

```bash
docker push "dayan3847/wordpress:6.8.2-php8.4-apache-cli"
```

```bash
docker run --rm "dayan3847/wordpress:6.8.2-php8.4-apache-cli"
```
