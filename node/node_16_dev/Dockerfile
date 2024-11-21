FROM node:16.3.0

RUN apt update
RUN apt upgrade -y

USER node
RUN mkdir -p /home/node/workspace

WORKDIR /home/node/workspace

VOLUME [ "/home/node/workspace" ]

CMD [ "bash" ]
