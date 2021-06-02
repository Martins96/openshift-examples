FROM httpd:2.4
MAINTAINER Luca Martinelli <luca.martinelli7cc@gmail.com>

ENV HTML_FOLDER=/usr/local/apache2/htdocs
ENV SERVER_FOLDER=/usr/local/apache2

RUN echo "STARTING BUILD - httpd not-root"

USER root

RUN sed -i 's/Listen 80/Listen 8080/g' /usr/local/apache2/conf/httpd.conf
RUN sed -i 's/#ServerName www.example.com:80/ServerName 0.0.0.0:8080/g' /usr/local/apache2/conf/httpd.conf
RUN sed -i 's/VirtualHost .:80/VirtualHost *:8080/g' /usr/local/apache2/conf/extra/httpd-vhosts.conf

RUN rm -rf ${HTML_FOLDER}/*
ADD ./index.html ${HTML_FOLDER}

RUN useradd -m apache && chown -R apache:apache ${SERVER_FOLDER} && chmod -R 755 ${SERVER_FOLDER}

EXPOSE 8080

USER apache

RUN echo ${PATH}

WORKDIR /usr/local/apache2
ENTRYPOINT httpd-foreground