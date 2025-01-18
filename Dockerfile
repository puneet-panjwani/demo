# Use an official OpenJDK runtime as a parent image
FROM openjdk:17-jdk-slim

# Set the working directory inside the container
WORKDIR /app

# Copy the packaged Spring Boot JAR file into the container
COPY target/demo-0.1.jar app.jar

# Expose the port your Spring Boot app will run on (default is 8080)
EXPOSE 8081

# Run the Spring Boot application
ENTRYPOINT ["java", "-jar", "app.jar"]
