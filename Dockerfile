FROM  openjdk
COPY ./spring-boot-hello-world-0.0.1-SNAPSHOT.jar .
CMD ["java", "-jar", "spring-boot-hello-world-0.0.1-SNAPSHOT.jar"]
EXPOSE 8080
