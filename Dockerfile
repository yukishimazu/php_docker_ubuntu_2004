FROM ubuntu:20.04

ENV DEBIAN_FRONTEND noninteractive
ENV TZ Asia/Tokyo

RUN apt-get update -qq \
    && apt-get install -y apache2 vim wget php php-mysql iputils-ping mysql-client \
    && rm /etc/apache2/sites-enabled/000-default.conf

RUN mkdir /home/app
WORKDIR /home/app

COPY apache.conf /etc/apache2/sites-enabled/apache.conf

EXPOSE 80
