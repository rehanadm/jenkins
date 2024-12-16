FROM ubuntu:latest
RUN apt-get update
RUN apt-get install -y apache2
RUN rm -f /var/www/html/index.html
ADD ./index.html /var/www/html
EXPOSE 80
CMD ["apachectl", "-D", "FOREGROUND"]
