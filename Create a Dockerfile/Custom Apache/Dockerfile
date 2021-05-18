FROM httpd:2.4
MAINTAINER Luca Martinelli <luca.martinelli7cc@gmail.com>

ENV HTML_FOLDER=/usr/local/apache2/htdocs
ENV SERVER_FOLDER=/usr/local/apache2

RUN echo "STARTING BUILD - httpd not-root"

USER root

RUN rm -rf ${HTML_FOLDER}/*
ADD ./index.html ${HTML_FOLDER}

RUN useradd -m apache && chown -R apache:apache ${SERVER_FOLDER} && chmod -R 755 ${SERVER_FOLDER}
RUN apt-get update && apt-get install -y procps

USER apache