FROM node:14-slim

WORKDIR /opt

RUN apt-get update && \
    apt-get install -y unzip curl apt-transport-https ca-certificates gnupg2 software-properties-common && \
    curl -fsSL https://download.docker.com/linux/debian/gpg | apt-key add - && \
    add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/debian $(lsb_release -cs) stable" && \
    apt update && apt cache policy docker-ce && \
    apt install docker-ce-cli && \
    apt-get clean

