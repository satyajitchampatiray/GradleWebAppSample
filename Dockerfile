
FROM tomcat

MAINTAINER Satyajit Champatiray

RUN apt-get update && apt-get -y upgrade

WORKDIR /usr/local/tomcat

copy web/build/libs/web.war /usr/local/tomcat/webapps/

EXPOSE 8081

CMD ["catalina.sh", "start"]
