FROM ubuntu
MAINTAINER sai
RUN apt-get update -y && \
    apt-get install apache2 -y
COPY index.html /var/www/html
CMD ["usr/sbin/apachectl", "-D", "FOREGROUND"]

