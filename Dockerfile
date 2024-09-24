# Use an official OpenJDK image
FROM openjdk:17-jdk-slim

# Set the working directory inside the container
WORKDIR /app

# Copy the JAR file built by Maven into the container
COPY target/my-spring-app-0.0.1-SNAPSHOT.jar /app/my-spring-app.jar

# Run the application
CMD ["java", "-jar", "/app/my-spring-app.jar"]
