FROM python:3.7-alpine
MAINTAINER developper jackslu

ENV PYTHONBUFFERED 1

COPY ./requirements.txt /requirements
RUN pip install -r /requirements
RUN mkdir /app
WORKDIR /app
COPY ./app /app

RUN adduser -D user
USER user
