FROM ubuntu:latest

RUN apt-get update && apt-get install -y unzip wget && apt-get clean

ARG GUNBOT_VERSION=18.8.8
ENV GUNBOT_VERSION ${GUNBOT_VERSION}

RUN mkdir -p /app
WORKDIR /app

COPY install.sh .

RUN ./install.sh

WORKDIR /app/gunbot

VOLUME /app/gunbot/

CMD ./gunthy-linux

EXPOSE 5000
