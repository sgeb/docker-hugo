# docker-hugo

**DEPRECATED!**

Please use [klakegg/hugo](https://hub.docker.com/r/klakegg/hugo) instead.

---

Hugo container based on alpine.

## Usage

From [Docker Hub](https://hub.docker.com/r/sgeb/hugo/):

```
docker run --rm -v $PWD:/src sgeb/hugo:latest
```

## Building

```
docker build -t sgeb/hugo .
```

or, for example with version tag:

```
docker build -t sgeb/hugo:0.88.1 .
docker tag sgeb/hugo:0.88.1 sgeb/hugo:latest
```

## Push to Docker Hub

```
docker login
docker push sgeb/hugo:0.88.1
docker push sgeb/hugo:latest
```
