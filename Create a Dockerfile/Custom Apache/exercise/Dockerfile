FROM httpd:2.4
MAINTAINER Luca Martinelli <luca.martinelli7cc@gmail.com>

# Set new 2 environment variables
# $HTML_FOLDER  -->  /usr/local/apache2/htdocs
# $SERVER_FOLDER  -->  /usr/local/apache2

RUN echo "STARTING BUILD - httpd not-root"

USER root

RUN sed -i 's/Listen 80/Listen 8080/g' /usr/local/apache2/conf/httpd.conf
RUN sed -i 's/#ServerName www.example.com:80/ServerName 0.0.0.0:8080/g' /usr/local/apache2/conf/httpd.conf
RUN sed -i 's/VirtualHost .:80/VirtualHost *:8080/g' /usr/local/apache2/conf/extra/httpd-vhosts.conf

RUN rm -rf ${HTML_FOLDER}/*

#Include the local 'index.html' into container in the $HTML_FOLDER path

RUN useradd -m apache && chown -R apache:apache ${SERVER_FOLDER} && chmod -R 755 ${SERVER_FOLDER}

# Expose the port 8080

#Use the user 'apache'

RUN echo ${PATH}

#Set the working directory $SERVER_FOLDER


ENTRYPOINT httpd-foreground