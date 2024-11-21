FROM ubuntu:latest

RUN apt update
RUN apt upgrade -y

RUN apt install -y bash openssl

USER ubuntu
RUN mkdir -p /home/ubuntu/workspace

WORKDIR /home/ubuntu/workspace

VOLUME [ "/home/ubuntu/workspace" ]

CMD [ "bash" ]
