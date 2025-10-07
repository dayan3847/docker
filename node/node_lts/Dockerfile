FROM node:lts

RUN apt update

RUN npm install -g npm
RUN npm install -g pnpm

RUN chown -R node:node /tmp/

USER node
RUN mkdir -p /home/node/.npm/_logs

WORKDIR /app

CMD [ "bash" ]
