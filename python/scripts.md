```shell
docker pull python
```

## build

```shell
docker build -t "dayan3847/python:latest" .
```

```shell
docker push "dayan3847/python:latest"
```

```shell
docker pull "dayan3847/python:latest"
```

```shell
docker run --rm "dayan3847/python:latest" id
```

```shell
docker run --rm "dayan3847/python" pwd
```

```shell
docker run --rm "dayan3847/python" ls -la
```

```shell
docker run -it --rm "dayan3847/python" bash
```

```shell
docker run -it --rm -w "/app/" "dayan3847/python" bash
```

```shell
docker run --name "chatbot_python_dev" -it --rm -v "${PWD}/submodules/chatbot_server:/app/" -w "/app/" "dayan3847/python" bash
```
