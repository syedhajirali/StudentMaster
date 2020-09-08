FROM openjdk:8
VOLUME /tmp
ARG JAR_FILE=target/studentmaster.jar
ADD ${JAR_FILE} studentmaster.jar
ENTRYPOINT ["java","-Djava.security.egd=file:/dev/./urandom","-jar","/studentmaster.jar"]


