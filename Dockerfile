FROM jenkins/ssh-agent:alpine

RUN apk update --no-cache \
    && apk add --no-cache \
    nodejs \
    npm \
    git \
    curl \
    vim \
    && npm i -g npm \

