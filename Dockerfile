FROM openjdk:8-jdk-alpine
VOLUME /tmp
ADD /target/SpringBootDocker-0.0.1-SNAPSHOT.jar /opt/app.jar
ENTRYPOINT ["java","-jar","/opt/app.jar"]