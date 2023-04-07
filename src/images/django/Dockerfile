# Basic debian image for django development

ARG FROM_IMAGE=python:3.11-slim

# ---

# hadolint ignore=DL3006
FROM ${FROM_IMAGE}

ENV PYTHONUNBUFFERED 1
ENV PYTHONDONTWRITEBYTECODE 1

# hadolint ignore=DL3013
RUN pip install -U --no-cache-dir pip

COPY ./scripts/apt-install-clean.sh /tmp/apt-install-clean.sh
RUN ./tmp/apt-install-clean.sh \
    # dev tools \
    git zsh \
    # django deps \
    locales gettext

# install oh-my-zsh
RUN sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" \
    && chsh -s "$(which zsh)"

# enable autosuggestions
RUN git clone https://github.com/zsh-users/zsh-autosuggestions \
    "${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions"

# remove temp tools
RUN apt-get purge -y git --auto-remove && \
    rm -r /tmp/*