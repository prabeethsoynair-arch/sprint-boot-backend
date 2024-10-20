# Use OpenJDK 17 as the base image
FROM openjdk:17-jdk-slim

# Set the working directory in the container
WORKDIR /app

# Copy the packaged JAR file into the container
COPY target/spring-boot-backend-1.0-SNAPSHOT.jar spring-boot-backend.jar


# Expose the port the app runs on
EXPOSE 8080

# Command to run the Spring Boot application
ENTRYPOINT ["java", "-jar", "spring-boot-backend.jar"]
