FROM openjdk:8
ADD target/studentmaster.jar studentmaster.jar
ENTRYPOINT ["java","-jar","/studentmaster.jar"]
EXPOSE 3333
