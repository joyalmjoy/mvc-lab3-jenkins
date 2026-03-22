FROM tomcat:10.1-jdk17
COPY target/mvc-lab3-jenkins-1.0-SNAPSHOT.war /usr/local/tomcat/webapps/ROOT.war
EXPOSE 8080