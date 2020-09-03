FROM openjdk:8
ADD target/studentmaster-0.0.1-SNAPSHOT.jar studentmaster-0.0.1-SNAPSHOT.jar
ENTRYPOINT ["sh", "-c", "java $JAVA_OPTS -Djava.security.egd=file:/dev/./urandom -jar /studentmaster-0.0.1-SNAPSHOT.jar"]

EXPOSE 3333
