# syntax=docker/dockerfile:1
FROM debian:latest

RUN apt-get update && apt-get install -y  \
    curl \
    docker.io \
    docker-compose \
    vim \
    sudo \
    locate

RUN mkdir -p /usr/src/app/data/elasticsearch && \
    chmod 777 /usr/src/app/data/elasticsearch && \
    chgrp 1000 /usr/src/app/data/elasticsearch && \
    cd /usr/src/app && curl -LO https://raw.githubusercontent.com/reportportal/reportportal/master/docker-compose.yml

WORKDIR /usr/src/app
