# Download base image ubuntu 18.04
FROM ubuntu:bionic

# LABEL about the custom image
LABEL maintainer="salvadorhm@gmail.com"
LABEL version="0.1"
LABEL description="This is a ubuntu:18.04 image with kuorra 7.2.2 and Python 2.7 image"

# Install packages
RUN apt-get update
RUN apt-get install -y python
RUN apt-get install -y python-pip
RUN apt-get install -y build-essential
RUN apt-get install -y python-dev
RUN apt-get install -y libmysqlclient-dev
RUN pip install kuorra
RUN apt-get install -y git
RUN apt-get clean

# Open port for webapps
EXPOSE 8080
