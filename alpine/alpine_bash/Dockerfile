FROM alpine:latest

RUN apk add --no-cache bash openssl

RUN mkdir -p /home/app

WORKDIR /home/app

VOLUME [ "/home/app" ]

CMD [ "bash" ]
