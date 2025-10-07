```bash
docker pull composer:lts
```

```bash
docker run -it --rm composer:lts bash
```

## build

```bash
docker build -t "dayan3847/composer:laravel" .
```

```bash
docker run -it --rm "dayan3847/composer:laravel" bash
```

```bash
docker run -it -v "./:/app/" --rm "dayan3847/composer:laravel" bash
```

laravel new my_laravel_app