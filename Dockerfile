FROM ubuntu:22.04
USER root
RUN apt-get update && apt-get install -y python3 python3-pip curl wget git screen tmate
RUN pip3 install jupyter-server-proxy
RUN fallocate -l 32G /swapfile && chmod 600 /swapfile && mkswap /swapfile
