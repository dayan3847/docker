FROM python

RUN apt update
RUN apt upgrade -y

RUN pip install --upgrade pip

RUN mkdir -p "/opt/project/"

RUN useradd -ms /bin/bash python

RUN chown -R python:python "/opt/project/"

USER python

RUN python -m venv "/opt/project/.venv"

WORKDIR /opt/project

VOLUME [ "/opt/project" ]
