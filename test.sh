docker build -t tiwariav/alpine-dev:0.0-beta -f src/images/alpine-dev/Dockerfile src

docker build -t tiwariav/aws-cli:0.0-beta -f src/images/aws-cli/Dockerfile src

docker build -t tiwariav/debian-dev:0.0-beta -f src/images/debian-dev/Dockerfile src

# docker build -t tiwariav/django:0.0-beta -f src/images/django/Dockerfile src
# docker build -t tiwariav/django:0.0-beta-build-pip -f src/images/django/Dockerfile.build-pip src
# docker build -t tiwariav/django:0.0-beta-poppler -f src/images/django/Dockerfile.d.poppler src
# docker build -t tiwariav/django:0.0-beta-alpine -f src/images/django/alpine/Dockerfile src
# docker build -t tiwariav/django:0.0-beta-alpine-build-pip -f src/images/django/alpine/Dockerfile.build-pip src
# docker build -t tiwariav/django:0.0-beta-alpine-poppler -f src/images/django/alpine/Dockerfile.d.poppler src

# docker build -t tiwariav/django:0.0-beta-dev -f src/images/django/Dockerfile \
#     --build-arg FROM_IMAGE=tiwariav/debian-dev:0.0-beta src
# docker build -t tiwariav/django:0.0-beta-poppler-dev -f src/images/django/Dockerfile.d.poppler \
#     --build-arg FROM_IMAGE_TAG=0.0-beta-dev src
# docker build -t tiwariav/django:0.0-beta-alpine-dev -f src/images/django/alpine/Dockerfile \
#     --build-arg FROM_IMAGE=tiwariav/alpine-dev:0.0-beta src
# docker build -t tiwariav/django:alpine-0.0-beta-poppler-dev -f src/images/django/alpine/Dockerfile.d.poppler \
#     --build-arg FROM_IMAGE_TAG=alpine-dev-0.0-beta src

# docker build -t tiwariav/docker:0.0-beta -f src/images/docker/Dockerfile src

# docker build -t tiwariav/node-dev:0.0-beta -f src/images/node-dev/Dockerfile src
# docker build -t tiwariav/node-dev:0.0-beta-alpine -f src/images/node-dev/alpine/Dockerfile src

# docker build -t tiwariav/node-sentry:0.0-beta -f src/images/node-sentry/Dockerfile src

# docker build -t tiwariav/python-dev:0.0-beta -f src/images/python-dev/Dockerfile src
# docker build -t tiwariav/python-dev:0.0-beta-alpine -f src/images/python-dev/alpine/Dockerfile src

# docker build -t tiwariav/python-webhooks:0.0-beta -f src/images/python-webhooks/Dockerfile src