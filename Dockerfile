FROM python:3.8.5

ENV PYTHONUNBUFFERED 1

RUN pip install --upgrade pip

COPY ./requirements.txt /requirements.txt
RUN pip install -r /requirements.txt

RUN mkdir /app
WORKDIR /app 
COPY ./app /app

RUN adduser --system --no-create-home user 
USER user
