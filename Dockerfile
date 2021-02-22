FROM jenkins/ssh-agent:alpine

RUN apk update --no-cache \
    && apk add --no-cache \
    nodejs-current \
    npm \
    git \
    curl \
    vim \
    && npm i -g npm \

