My Eleventy Starter


# Building

## Site generated in Docker:
```bash
docker build -t foo -f Dockerfile-with-build .
```
Run:
```bash
docker run --rm --name foo -t -p 80:80 foo
```

## Site generated outside Docker:

```bash
npm run build
docker build -t foo .
```
Run:
```bash
docker run --rm --name foo -t -p 80:80 foo
```