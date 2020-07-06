# gcp-tools

## build
This will build the image from the Dockerfile.
```
docker build -t gcp-tools .
```

## run locally
This will run the local image built using the commmand above.
```
docker run --rm -it \
           --name gcp-tools \
           gcp-tools:latest $*
```

## run
This will pull and run the container image built by [dockerhub](https://hub.docker.com/r/markjkelly/gcp).
```
docker run --rm -it \
           --name gcp-tools \
           markjkelly/gcp-tools:latest $*
```
