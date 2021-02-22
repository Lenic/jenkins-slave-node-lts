FROM jenkins/ssh-agent:alpine

RUN apk update --no-cache \
    && apk add --no-cache \
    nodejs-current \
    npm \
    git \
    curl \
    vim \
    && npm i -g npm \
    && npm i -g yarn

# 使用阿里镜像源
RUN sed -i 's/dl-cdn.alpinelinux.org/mirrors.aliyun.com/g' /etc/apk/repositories

