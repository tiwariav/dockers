FROM node:18-slim

COPY ./scripts/* /tmp/

# development dependencies
RUN ./tmp/install-debian-dev-pkgs.sh \
    && rm -r /tmp/*