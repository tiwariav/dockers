# Docker containers for development

## multi-arch builds

By default the containers are built for linux/amd64 architecture on dockerhub.
Apple M1 systems require linux/arm64 to run with optimum performance.
`buildx` can build multi-arch images. It comes pre-installed with docker-desktop.

docker buildx create --name multiarch
docker buildx use multiarch
docker buildx inspect --bootstrap
docker buildx build -f Dockerfile.poppler -t tiwariav/django:poppler --platform linux/arm64,linux/amd64 .
