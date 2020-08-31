FROM openjdk:8
VOLUME /tmp
ADD target/studentmaster.jar studentmaster.jar
EXPOSE 9888
ENTRYPOINT ["java","-Djava.security.egd=file:/dev/./urandom","-jar","/studentmaster.jar"]
