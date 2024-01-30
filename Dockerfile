
# Use a base image with Java 17 installed
FROM openjdk:17

# Set the working directory inside the container
WORKDIR /app

COPY ./target/big-event-1.0-SNAPSHOT.jar app.jar

# Expose the port that the Spring Boot app will run on
EXPOSE 8082


ENTRYPOINT ["java","-jar","app.jar"]

