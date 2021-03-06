FROM node:latest

ENV DEBIAN_FRONTEND=noninteractive

# Install packages
RUN apt-get update -y && apt-get install -y curl unzip groff jq bc

RUN curl -fsSL https://deb.nodesource.com/setup_15.x | bash -
RUN apt-get update && apt-get install -y nodejs yarn

# Download and unzip install
RUN curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "awscliv2.zip"
RUN unzip awscliv2.zip

# Run AWS install
RUN ./aws/install
