apt-get update && apt-get install -y --no-install-recommends \
    apt-utils curl git git-extras nano openssh-client \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/*