FROM maven:3.5-jdk-8 AS MAVEN_BUILD  
COPY pom.xml /build/
COPY src /build/src/
WORKDIR /build/
RUN mvn package
FROM openjdk:8-jre-alpine
WORKDIR /app
COPY --from=MAVEN_BUILD /build/target/studentmaster.jar /app/
ENTRYPOINT ["java", "-jar", "studentmaster.jar"]
