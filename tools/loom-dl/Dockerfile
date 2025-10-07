FROM node

RUN apt update

RUN npm install loom-dl -g

RUN mkdir -p /app
RUN chown -R node:node /app/
RUN chown -R node:node /tmp/

USER node
RUN mkdir -p /home/node/.npm/_logs

WORKDIR /app

VOLUME [ "/app" ]

CMD [ "bash" ]
