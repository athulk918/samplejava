FROM tomcat:8
#take the war and copy to webapps of tomcat
COPY target/*.war /usr/local/tomcat/webapps/javaee7-simple-sample.war
EXPOSE 80
