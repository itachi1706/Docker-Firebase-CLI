FROM ubuntu:latest
LABEL maintainer="kenneth@itachi1706.com"

RUN apt-get update && \
    apt-get install -y curl sudo && \
    apt-get clean autoclean && \
    apt-get autoremove --yes && \
    rm -rf /var/lib/apt/lists/*
    
WORKDIR /opt

RUN curl -sL https://firebase.tools | bash
