FROM debian:stable-slim
#FROM ubuntu

RUN apt update

RUN apt install -y rsync

RUN mkdir -p /ftp
RUN chown -R www-data:www-data /ftp

COPY --chown=root:root --chmod=600 ./rsyncd.conf /etc/rsyncd.conf
COPY --chown=root:root --chmod=600 ./rsyncd.secrets /etc/rsyncd.secrets

CMD [ "rsync" , "--no-detach", "--daemon", "--port=873" ]
