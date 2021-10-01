FROM node:16-slim

RUN apt update \
    # development dependencies
    && apt install -y git git-extras apt-utils curl openssh-client \
    # cleaning up unused files
    && apt purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false \
    && rm -rf /var/lib/apt/lists/*

# install sentri-cli
# FIXME: the recommended install is not working with some curl error
# RUN curl -sL https://sentry.io/get-cli/ | bash
RUN npm install -g @sentry/cli