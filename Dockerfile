
FROM tomcat:8.0

COPY web/build/libs/web.war /usr/local/tomcat/webapps

CMD 
