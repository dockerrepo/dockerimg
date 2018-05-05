FROM tomcat

MAINTAINER shnamukha

RUN apt-get update && apt-get -y upgrade

WORKDIR /usr/local/tomcat

COPY tomcat-users.xml /usr/local/tomcat/conf/tomcat-users.xml
COPY context.xml /usr/local/tomcat/webapps/manager/META-INF/context.xml
CMD usermod -R 777 /usr/local/tomcat/webapps
COPY vsvyadav_null7.war  /usr/local/tomcat/webapps/
EXPOSE 8080

CMD sh  /usr/local/tomcat/bin/startup.sh
