
FROM tomcat

MAINTAINER Satyajit Champatiray

RUN apt-get update && apt-get -y upgrade

WORKDIR /usr/local/tomcat

RUN cp web/build/libs/web.war /usr/local/tomcat/webapps/

EXPOSE 9001

CMD ["catalina.sh", "start"]
