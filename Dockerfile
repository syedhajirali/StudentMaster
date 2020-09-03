FROM openjdk:8
VOLUME /tmp
WORKDIR /
ADD target/studentmaster.jar studentmaster.jar
EXPOSE 8080
ENTRYPOINT ["java","-Djava.security.egd=file:/dev/./urandom","-jar","/studentmaster.jar"]


