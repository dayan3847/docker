```bash
docker pull php:8.2-cli-alpine
```

```bash
docker run -it --rm php:8.2-cli-alpine sh
```

```bash
docker run -it --rm php:8.2-cli-alpine cat /etc/passwd
```


```bash
docker build -t "dayan3847/php-scoper:0.18.16-php8.2" .
```

```bash
docker push "dayan3847/php-scoper:0.18.16-php8.2"
```

```bash
docker run --rm "dayan3847/php-scoper:0.18.16-php8.2" --help
```

```bash
docker run --rm -it --entrypoint='' "dayan3847/php-scoper:0.18.16-php8.2" sh
```

```bash
docker run --rm --entrypoint id "dayan3847/php-scoper:0.18.16-php8.2"
```

```bash
docker run --rm --entrypoint pwd "dayan3847/php-scoper:0.18.16-php8.2"
```

```bash
docker run --rm --entrypoint ls "dayan3847/php-scoper:0.18.16-php8.2" /home -la
```

```bash
docker run --rm "dayan3847/php-scoper:0.18.16-php8.2" pwd
```

```bash
docker run -it --rm "dayan3847/php-scoper:0.18.16-php8.2" bash
```

```bash
docker run --rm -v "$PWD:/var/www/html" "dayan3847/php-scoper:0.18.16-php8.2" ls -la
```
