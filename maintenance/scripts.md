```bash
docker pull nginx:1.29.1
```

```bash
docker run -it --rm nginx:1.29.1 ls -alh /usr/share/nginx/html
```

```bash
docker build -t "dayan3847/maintenance" .
```

```bash
docker run -it --rm "dayan3847/maintenance" ls -alh /usr/share/nginx/html
```

```bash
docker run -it --rm -p "3000:80" "dayan3847/maintenance"
```

```bash
docker push "dayan3847/maintenance"
```

```bash
docker pull "dayan3847/maintenance"
```
