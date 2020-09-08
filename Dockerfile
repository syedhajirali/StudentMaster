FROM openjdk:8
VOLUME /tmp
WORKDIR /
ADD /target/studentmaster.jar /studentmaster.jar
EXPOSE 8080
CMD ["java","-Djava.security.egd=file:/dev/./urandom","-jar","/studentmaster.jar"]


