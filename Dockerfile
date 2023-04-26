ARG ARCH=
FROM ${ARCH}alpine:latest

MAINTAINER Andrey Sorokin <andrey@sorokin.org>

RUN apk update &&\
    apk add --no-cache bash wget wireguard-tools openssh-server curl dumb-init &&\
    mkdir /root/.ssh && mkdir /run/sshd &&\
    /usr/bin/ssh-keygen -A
COPY start.sh /start.sh
EXPOSE 22

ENTRYPOINT ["/usr/bin/dumb-init","/start.sh"]



