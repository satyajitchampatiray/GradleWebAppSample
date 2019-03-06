
FROM tomcat

MAINTAINER Satyajit Champatiray
RUN sudo apt-get update && apt-get -y upgrade
WORKDIR /usr/local/tomcat

RUN CP web/
EXPOSE 8080
CMD ["catalina.sh", "start"]
