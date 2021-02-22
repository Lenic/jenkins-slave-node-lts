FROM jenkins/ssh-agent:alpine

RUN sed -i /etc/ssh/sshd_config \
        -e 's/PermitRootLogin.*/PermitRootLogin yes/' \
        -e 's/PasswordAuthentication.*/PasswordAuthentication yes/' \
    && echo "root:admin" | chpasswd

RUN apk update --no-cache \
    && apk add --no-cache \
    nodejs-current \
    npm \
    git \
    curl \
    vim \
    python2 \
    && npm i -g npm \
    && npm i -g yarn

# 使用阿里镜像源
RUN sed -i 's/dl-cdn.alpinelinux.org/mirrors.aliyun.com/g' /etc/apk/repositories

