FROM openjdk:8
ADD target/studentmaster.jar studentmaster.jar
EXPOSE 9888
ENTRYPOINT ["java", "-jar", "/studentmaster.jar"]
