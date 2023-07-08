FROM ubuntu:latest

RUN apt-get update && \
    apt-get install -y tmate xfce4 xrdp jq curl unzip

RUN curl -s https://bin.equinox.io/c/4VmDzA7iaHb/ngrok-stable-linux-amd64.zip > ngrok.zip && \
    unzip ngrok.zip && \
    chmod +x ./ngrok && \
    mv ngrok /usr/local/bin/

WORKDIR /workdir
