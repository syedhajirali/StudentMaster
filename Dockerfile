FROM openjdk:8
VOLUME /tmp
ARG JAR_FILE
COPY ${JAR_FILE} studentmaster.jar
#ADD target/studentmaster.jar studentmaster.jar
EXPOSE 9888
ENTRYPOINT ["java","-Djava.security.egd=file:/dev/./urandom","-jar","/studentmaster.jar"]
