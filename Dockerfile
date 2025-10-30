# Use Ubuntu as base image
FROM ubuntu:22.04

# Install Java 17 (OpenJDK)
RUN apt-get update && \
    apt-get install -y openjdk-17-jdk maven && \
    apt-get clean && rm -rf /var/lib/apt/lists/*

# Set working directory
WORKDIR /app

# Copy the Spring Boot JAR into the container
COPY target/helloapp-1.0.0.jar app.jar

# Expose the port your Spring Boot app runs on
EXPOSE 8080

# Run the Spring Boot application
ENTRYPOINT ["java", "-jar", "app.jar"]

