# Image with common development tools on Debian

FROM debian:bullseye

COPY ./scripts/* /tmp/

# development dependencies
RUN ./tmp/install-debian-dev-pkgs.sh \
    && rm -r /tmp/*