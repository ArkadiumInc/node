FROM node:14-slim

WORKDIR /opt

RUN apt-get update && \
    apt-get install -y unzip curl docker-ce && \
    apt-get clean

