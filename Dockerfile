# syntax=docker/dockerfile:1

FROM python:3.8-slim-buster

WORKDIR /app

COPY requirements.txt requirements.txt
RUN pip3 install -r requirements.txt

# Explicitly install Werkzeug version 2.0.0
RUN pip3 install Werkzeug==2.0.0

COPY . .

CMD ["python3", "-m", "flask", "run", "--host=0.0.0.0"]

