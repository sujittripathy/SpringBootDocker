FROM openjdk

COPY /target/SpringBootDocker-0.0.1-SNAPSHOT.jar /opt/SpringBootDocker-0.0.1-SNAPSHOT.jar

java -jar /opt/SpringBootDocker-0.0.1-SNAPSHOT.jar