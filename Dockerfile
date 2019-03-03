FROM python:3.7-alpine
MAINTAINER Vincent Wei

ENV PYTHONUNBUFFERED 1

COPY ./requirements.txt /requirements.txt

RUN pip install -i https://pypi.douban.com/simple/ -r /requirements.txt

RUN mkdir /app
WORKDIR /app
COPY ./app /app

RUN adduser -D user
USER user