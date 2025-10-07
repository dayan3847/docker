```bash
docker pull alpine
```

```bash
docker run -it --rm alpine sh
```

```bash
docker run -it --rm alpine cat /etc/passwd
```

```bash
docker run -it --rm alpine cat /etc/group
```

```bash
docker build -t "dayan3847/alpine" .
```

```bash
docker push "dayan3847/alpine"
```

```bash
docker run -it --rm "dayan3847/alpine" sh
```

```bash
docker run -it --rm "dayan3847/alpine" id alpine
```

```bash
docker run -it --rm "dayan3847/alpine" id www-data-u
```

```bash
docker run -it --rm "dayan3847/alpine" cat /etc/passwd
```

```bash
docker run -it --rm "dayan3847/alpine" cat /etc/group
```
