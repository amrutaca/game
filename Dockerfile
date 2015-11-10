FROM tomcat
MAINTAINER xyz

ADD https://s3-us-west-2.amazonaws.com/amrutacd/Football.war /usr/local/tomcat/webapps/ROOT/
RUN cd /usr/local/tomcat/webapps/ROOT/
RUN apt-get update
RUN tar -xvzf /usr/local/tomcat/webapps/ROOT/Football.war
RUN cp -r /usr/local/tomcat/Football /usr/local/tomcat/webapps/ROOT/

CMD ["catalina.sh", "run"]
