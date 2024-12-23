FROM node:lts

RUN apt update
RUN apt upgrade -y

RUN npm install -g npm
RUN npm install -g pnpm

RUN mkdir -p /app
RUN chown -R node:node /app/
RUN chown -R node:node /tmp/

USER node
RUN mkdir -p /home/node/.npm/_logs

WORKDIR /app

CMD [ "bash" ]
