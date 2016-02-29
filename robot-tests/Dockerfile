FROM ubuntu:latest
MAINTAINER Brian Sykes

RUN apt-get update
RUN apt-get install -y python-pip python-dev gcc phantomjs firefox xvfb curl
RUN apt-get clean
RUN rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
RUN pip install robotframework
RUN pip install robotframework-selenium2library
USER root
COPY . /tmp/robot
WORKDIR /tmp/robot
