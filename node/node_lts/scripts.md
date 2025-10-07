````shell
docker pull node:lts
````

````shell
docker run -it --rm node:lts bash
````

## buildx

````shell
docker buildx build --platform linux/amd64,linux/arm64,windows/amd64 -t "dayan3847/node:lts" . --push
````

## Build

```bash
docker build -t "dayan3847/node:lts" .
```

## push

```bash
docker push "dayan3847/node:lts"
```

## Build

### Linux

````shell
docker build -t "dayan3847/node:lts-linux" .
#docker build -t "dayan3847/node:lts" .
````

````shell
docker build --no-cache -t "dayan3847/node:lts-linux" .
````

### Windows

````shell
docker build -t "dayan3847/node:lts-windows" .
````

### Mac

````shell
docker build -t "dayan3847/node:lts-mac" .
````

## Create for multi-platform

````shell
docker buildx imagetools create --tag "dayan3847/node:lts" \
    "dayan3847/node:lts-linux" \
    "dayan3847/node:lts-windows" \
    "dayan3847/node:lts-mac"
````

## Push

````shell
docker push "dayan3847/node:lts-linux"
````

````shell
docker push "dayan3847/node:lts-windows"
````

````shell
docker push "dayan3847/node:lts-mac"
````

````shell
docker buildx imagetools inspect "dayan3847/node:lts"
````

## Tests

````shell
docker run --rm "dayan3847/node:lts" id
````

````shell
docker run --rm "dayan3847/node:lts" pwd
````

````shell
docker run --rm "dayan3847/node:lts" ls -la
````

````shell
docker run -it --rm "dayan3847/node:lts" bash
````

## Create for devcontainer

````shell
docker run --name "node_lts" -it "dayan3847/node:lts" bash
````

# start container

````shell
docker start "node_lts"
````

````shell
docker exec -it "node_lts" bash
````

````shell
docker buildx build --platform linux/amd64,linux/arm64 -t dayan3847/node:lts --load .
````

````shell
docker run --name "node_lts" -it --rm -v "${PWD}/log/:/home/node/.npm/_logs" -v "${PWD}/:/home/node/workspace/" "dayan3847/node:lts" bash
````

````shell
docker run --name "node_lts_nuxt" -it --rm -v "${PWD}/:/home/node/workspace/" "dayan3847/node:lts" bash
````

````shell
docker run --name "node_lts" -it --rm -v "/var/w/workspace_node/:/home/node/workspace/" "dayan3847/node:lts" bash
````

````shell
pnpm create vite --template vue-ts my-vue-app
````

````shell
docker run --rm -v "${PWD}/:/home/node/workspace/admin/" -v "${PWD}/log/:/home/node/.npm/_logs" -w "/home/node/workspace/admin/" "dayan3847/node:lts" npm install
````

````shell
docker run --rm -v "${PWD}/:/home/node/workspace/admin/" -v "${PWD}/log/:/home/node/.npm/_logs" -w "/home/node/workspace/admin/" "dayan3847/node:lts" npm run build
````

````shell
docker run --rm -v "${PWD}/:/home/node/workspace/admin/" -v "${PWD}/log/:/home/node/.npm/_logs" -w "/home/node/workspace/admin/" "dayan3847/node:lts" npm run lint
````

````shell
docker run --rm -v "${PWD}/:/home/node/workspace/admin/" -v "${PWD}/log/:/home/node/.npm/_logs" -w "/home/node/workspace/admin/" -p "3000:3000" "dayan3847/node:lts" npm run dev
````