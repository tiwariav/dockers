# Basic alpine image for django development

ARG FROM_IMAGE=python:3.11-alpine

# ---

# hadolint ignore=DL3006
FROM ${FROM_IMAGE}

ENV PYTHONUNBUFFERED 1
ENV PYTHONDONTWRITEBYTECODE 1

# hadolint ignore=DL3013
RUN pip install -U --no-cache-dir pip

RUN apk add --no-cache \
    # dev tools \
    curl git zsh \
    # django deps \
    gettext musl-locales

# install oh-my-zsh
RUN sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" \
    && sed -i 's/\/bin\/ash/\/bin\/zsh/g' /etc/passwd

# enable autosuggestions
RUN git clone https://github.com/zsh-users/zsh-autosuggestions \
    "${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions"

# remove temp tools
RUN apk del curl git