FROM debian:latest

RUN apt update

#install rsync
RUN apt install -y rsync

VOLUME [ "/w/source/", "/w/destination/" ]

CMD [ "rsync", "-ravz", "--delete", "--progress", "--stats", "--human-readable", "/w/source/", "/w/destination/" ]
