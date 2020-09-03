FROM openjdk:8
ADD target/studentmaster.jar studentmaster.jar
ENTRYPOINT ["sh", "-c", "java $JAVA_OPTS -Djava.security.egd=file:/dev/./urandom -jar /studentmaster.jar"]

EXPOSE 3333
