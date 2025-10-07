FROM python

RUN pip install --upgrade pip

RUN mkdir "/app"

RUN useradd -ms /bin/bash python

RUN chown -R python:python /app

USER python

RUN mkdir -p "/home/python/.local/bin"

RUN export PATH=$PATH:/home/python/.local/bin

# RUN python -m venv "/home/python/.venv"

WORKDIR /app

VOLUME [ "/app" ]
