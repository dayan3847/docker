FROM rocker/verse:latest

RUN apt update
RUN apt upgrade -y
RUN apt install -y python3
RUN apt install -y python3-pip

RUN mkdir /app
RUN chown rstudio /app

USER rstudio

#RUN pip install pandas
#RUN pip install seaborn
#RUN pip install jupyter
#RUN pip install plotly
#RUN pip install statsmodels

RUN quarto install tinytex

VOLUME /app
WORKDIR /app
