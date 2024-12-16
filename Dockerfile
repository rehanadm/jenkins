FROM ubuntu:latest
RUN apt-get update
RUN apt-get install -y apache

RUN rm /var/www/html/index.html

ADD ./index.html /var/www/html
