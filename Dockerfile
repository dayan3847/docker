FROM rocker/verse:latest

RUN apt update
RUN apt upgrade -y
RUN apt install -y python3
RUN apt install -y python3-pip

RUN mkdir /app
RUN chown rstudio /app

USER rstudio

RUN pip3 install pandas
RUN pip3 install seaborn
RUN pip3 install jupyter

VOLUME /app
WORKDIR /app
