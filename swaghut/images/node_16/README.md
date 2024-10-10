## Name

```shell
IMAGE_NAME=${PWD##*/}; IMAGE_NAME="swaghut/${IMAGE_NAME//_/:}";
echo $IMAGE_NAME
```

## Build

```shell
echo "Building image: $IMAGE_NAME"
docker build -t "$IMAGE_NAME" .
```

## Push

```shell
echo "Pushing image: $IMAGE_NAME"
docker push "$IMAGE_NAME"
```

# dayan3847

## Tag

```shell
docker tag "swaghut/node:16" "dayan3847/node:16"
```

## Push

```shell
docker push "dayan3847/node:16"
```
