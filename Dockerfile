FROM node:16-slim

WORKDIR /opt

RUN apt-get update && \
    apt-get install -y unzip curl docker.io && \
    apt-get clean

