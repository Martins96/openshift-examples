FROM debian:stable

RUN apt update && \
	apt install -y openjdk-11-jre && \
	apt install -y unzip && \
	apt clean && \
	apt autoremove

RUN java -version

ADD ./wildfly-23.0.2.Final.zip /opt/

WORKDIR /opt
RUN unzip wildfly-23.0.2.Final.zip

RUN sh /opt/wildfly-23.0.2.Final/bin/add-user.sh -u testuser -p secret1

RUN rm wildfly-23.0.2.Final.zip && \
	rm -r wildfly-23.0.2.Final/docs/

WORKDIR /opt/wildfly-23.0.2.Final

EXPOSE 8080
EXPOSE 9990

ENTRYPOINT [ "sh" ]
CMD [ "bin/standalone.sh" ]