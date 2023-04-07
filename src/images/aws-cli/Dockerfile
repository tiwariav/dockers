# aws-cli alpine image

ARG ALPINE_VERSION=3.17

FROM python:3.11-alpine${ALPINE_VERSION} as builder

ARG AWS_CLI_VERSION=2.11.10
RUN apk add --no-cache git unzip groff build-base libffi-dev cmake
RUN git clone --single-branch --depth 1 -b \
    ${AWS_CLI_VERSION} https://github.com/aws/aws-cli.git

WORKDIR /aws-cli
RUN ./configure --with-install-type=portable-exe --with-download-deps
RUN make && make install

# reduce image size: remove autocomplete and examples
WORKDIR /usr/local/lib/aws-cli
RUN rm -rf \
    ./aws_completer \
    ./awscli/data/ac.index \
    ./awscli/examples
RUN find ./awscli/data -name "completions-1*.json" -delete
RUN find ./awscli/botocore/data -name examples-1.json -delete
RUN (for a in *.so*; do test -f "/lib/$a" && rm "$a"; done)

# ---

FROM alpine:${ALPINE_VERSION}
COPY --from=builder /usr/local/lib/aws-cli/ /usr/local/lib/aws-cli/
RUN ln -s /usr/local/lib/aws-cli/aws /usr/local/bin/aws