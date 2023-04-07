FROM python:3.11-slim

ENV PYTHONUNBUFFERED 1
ENV PYTHONDONTWRITEBYTECODE 1

# hadolint ignore=DL3013
RUN pip install -U --no-cache-dir pip

COPY ./scripts/* /tmp/

# development dependencies
RUN ./tmp/install-debian-dev-pkgs.sh \
    && rm -r /tmp/*