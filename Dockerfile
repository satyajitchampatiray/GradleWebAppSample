
FROM tomcat

MAINTAINER Satyajit Champatiray

RUN sudo apt-get update && apt-get -y upgrade

WORKDIR /usr/local/tomcat

RUN cp web/build/libs/web.war /usr/local/tomcat/webapps/

EXPOSE 8080

CMD ["catalina.sh", "start"]
