FROM ubuntu:16.04
MAINTAINER Isac C. "isaccavalcante@alu.ufc.br"
ADD . /app
WORKDIR /app
EXPOSE 8001

RUN apt update -y && apt-get install -y \
    python3 \
    python3-pip \
    python3-dev \
    python3-lxml \
    build-essential 
    
RUN pip3 install --upgrade pip && pip3 install -r requirements.txt 

ENV PYTHONUNBUFFERED="TRUE"

