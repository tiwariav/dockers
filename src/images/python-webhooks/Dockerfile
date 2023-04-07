FROM python:3.11-alpine

ENV PYTHONUNBUFFERED 1
ENV PYTHONDONTWRITEBYTECODE 1

# hadolint ignore=DL3013
RUN pip install -U --no-cache-dir pip

# Install required pip packages for webhooks
RUN pip install --no-cache-dir \
    pytz==2023.3 \
    requests==2.28.2 \
    toml==0.10.2
