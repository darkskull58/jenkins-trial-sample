FROM tomcat:8.5.35-jre10

LABEL maintainer=vishal

USER root

COPY ./target/spring-boot-hello-world-0.0.1-SNAPSHOT.jar /usr/local/tomcat/webapps/

RUN chmod +x /usr/local/tomcat/bin/catalina.sh

ENTRYPOINT ["/usr/local/tomcat/bin/catalina.sh", "run"]
