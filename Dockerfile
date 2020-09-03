FROM openjdk:8
ARG JAR_FILE=target/studentmaster.jar
COPY ${JAR_FILE} studentmaster.jar
ENTRYPOINT ["java","-jar","studentmaster.jar"]
