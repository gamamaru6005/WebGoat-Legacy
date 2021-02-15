FROM tomcat:9.0.20-jre8-alpine

RUN rm -rf /usr/local/tomcat/webapps/docs /usr/local/tomcat/webapps/examples /usr/local/tomcat/webapps/ROOT
ADD WebGoat-6.0.1.war /usr/local/tomcat/webapps/
ADD WebGoat-6.0.1-war-exec.jar /usr/local/tomcat/webapps/

RUN java -jar /usr/local/tomcat/webapps/WebGoat-6.0.1-war-exec.jar

EXPOSE 8080

CMD chmod +x /usr/local/tomcat/bin/catalina.sh
CMD ["catalina.sh", "run"]
