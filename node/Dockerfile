FROM node:20-bullseye-slim

RUN apt update \
    # development dependencies
    && apt install -y git git-extras apt-utils curl ca-certificates openssh-client \
    # cleaning up unused files
    && apt purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false \
    && rm -rf /var/lib/apt/lists/*

RUN curl -sL https://sentry.io/get-cli/ | bash