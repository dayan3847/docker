# SwagHut

```shell
pwd
```

```shell
source .env
```

```shell
echo "Image: $MY_TAG"
```

#### Build

```shell
source .env
echo "Building image: $MY_TAG"
docker build -t "swaghut/shop:$MY_TAG" .
```

#### Push

```shell
source .env
echo "Pushing image: $MY_TAG"
docker push "swaghut/shop:$MY_TAG"
```

