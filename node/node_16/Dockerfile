FROM node:16.3.0

RUN apt update
RUN apt upgrade -y

USER node
RUN mkdir -p /home/node/workspace
RUN mkdir -p /home/node/.npm/_logs

WORKDIR /home/node/workspace

VOLUME [ "/home/node/workspace", "/home/node/.npm/_logs" ]

CMD [ "bash" ]
