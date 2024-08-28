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
