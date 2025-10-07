https://developer.bigcommerce.com/docs/storefront/stencil/cli/install
https://medium.com/bigcommerce-developer-blog/dockerizing-bigcommerces-stencil-cli-f508ddc0c3c0

````shell
docker pull node:20.16.0
````

```bash
docker build -t "dayan3847/stencil:20.16.0" .
```

```bash
docker run -it -v "./theme:/theme" -p 3000:3000 "dayan3847/stencil:20.16.0" bash
```
