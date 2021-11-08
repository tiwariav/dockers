#TODO: add production stage

FROM python:3.9-slim as development

ENV PYTHONUNBUFFERED 1
ENV PYTHONDONTWRITEBYTECODE 1

# Add root bin to PATH
ENV PATH="/root/.local/bin:${PATH}"

RUN apt update \
    # development dependencies
    && apt install -y git git-extras curl apt-utils nano openssh-client zsh locales \
    # dependencies for building Python packages
    build-essential python3-dev \
    # psycopg2 dependencies
    libpq-dev \
    # Translations dependencies
    gettext \
    # cleaning up unused files
    && apt purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false \
    && rm -rf /var/lib/apt/lists/*

# upgrade pip
RUN python -m pip install --upgrade pip

# install oh my zsh
RUN sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" && chsh -s $(which zsh)
RUN git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions