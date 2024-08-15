FROM node:latest

RUN npm install -g npm

RUN npm install -g pnpm

USER node

RUN mkdir /home/node/app

WORKDIR /home/node/app

VOLUME [ "/home/node/app" ]
