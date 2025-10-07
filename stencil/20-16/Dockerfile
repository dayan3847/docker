FROM node:20.16.0

RUN chown -R node:node /tmp/

RUN npm install -g @bigcommerce/stencil-cli

USER node
RUN mkdir -p /home/node/.npm/_logs

WORKDIR /theme

# default command
#ENTRYPOINT ["stencil"]
#CMD ["--help"]

# publish cli default port
EXPOSE 3000
