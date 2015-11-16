FROM tomcat
MAINTAINER xyz

RUN  apt-get update \
  && apt-get install -y wget \
  && rm -rf /var/lib/apt/lists/*

RUN wget --no-check-certificate https://s3-us-west-2.amazonaws.com/amrutacd/Football.zip
RUN cp ./Football.zip /usr/local/tomcat/webapps/

RUN cd /usr/local/tomcat/webapps/
RUN apt-get update
RUN unzip Football.zip

CMD ["catalina.sh", "run"]
