FROM ubuntu:22.04
RUN apt-get update && apt-get install -y openjdk-17-jdk && apt-get clean && rm -rf /var/lib/apt/lists/*
WORKDIR /app
COPY target/helloapp-1.0.0.jar app.jar
EXPOSE 8080
ENTRYPOINT ["java", "-jar", "app.jar"]
