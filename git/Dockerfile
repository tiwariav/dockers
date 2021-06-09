FROM debian:10-slim

RUN apt update \
    # development dependencies
    && apt install -y git git-extras apt-utils openssh-client \
    # cleaning up unused files
    && apt purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false \
    && rm -rf /var/lib/apt/lists/*