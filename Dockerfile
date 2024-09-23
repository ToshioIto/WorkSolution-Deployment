#
# Build stage
#
FROM maven:3.8.6-eclipse-temurin-17 AS build
COPY src /home/app/src
COPY pom.xml /home/app
RUN mvn -f /home/app/pom.xml clean package

#
# Package stage
#
FROM eclipse-temurin:17-jre
COPY --from=build /home/app/target/WorkSolutionAPI-0.0.1-SNAPSHOT.jar /usr/local/lib/WorkSolutionAPI.jar
EXPOSE 8080
ENTRYPOINT ["java", "-jar", "/usr/local/lib/WorkSolutionAPI.jar"]
