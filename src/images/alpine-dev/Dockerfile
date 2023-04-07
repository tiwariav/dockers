# Image with common development tools on Alpine

FROM alpine:3.17

COPY ./scripts/* /tmp/

# development dependencies
RUN ./tmp/install-alpine-dev-pkgs.sh \
    && rm -r /tmp/*