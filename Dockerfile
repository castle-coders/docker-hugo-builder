FROM alpine:3.12.0 

# https://hub.docker.com/_/alpine
# https://pkgs.alpinelinux.org/packages?name=hugo&branch=v3.12&arch=x86_64

RUN apk add --no-cache \
    hugo=0.71.1-r0

RUN adduser -D -h /home/builduser -u 1000 -s /bin/bash builduser 

USER builduser
