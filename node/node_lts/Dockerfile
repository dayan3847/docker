FROM node:lts

RUN apt update
RUN apt upgrade -y

RUN npm install -g npm
RUN npm install -g pnpm

USER node
RUN mkdir -p /home/node/workspace
RUN mkdir -p /home/node/.npm/_logs

WORKDIR /home/node/workspace

VOLUME [ "/home/node/workspace", "/home/node/.npm/_logs" ]

CMD [ "bash" ]
