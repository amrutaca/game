FROM tomcat
MAINTAINER xyz

RUN  apt-get update \
  && apt-get install -y wget \
  && rm -rf /var/lib/apt/lists/*

RUN wget --no-check-certificate https://s3-us-west-2.amazonaws.com/amrutacd/Petstore.zip
RUN cp ./Petstore.zip /usr/local/tomcat/webapps/ROOT/

RUN cd /usr/local/tomcat/webapps/ROOT/
RUN apt-get update
RUN unzip /usr/local/tomcat/webapps/ROOT/Petstore.zip
RUN cp -r /usr/local/tomcat/Petstore /usr/local/tomcat/webapps/ROOT/

CMD ["catalina.sh", "run"]
