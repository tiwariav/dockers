FROM node:16-slim

RUN apt update \
    # development dependencies
    && apt install -y git git-extras apt-utils openssh-client \
    # cleaning up unused files
    && apt purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false \
    && rm -rf /var/lib/apt/lists/*

# install sentri-cli
RUN curl -sL https://sentry.io/get-cli/ | bash