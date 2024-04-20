# Use a base image with a JVM, such as OpenJDK
FROM openjdk:17-alpine

# Set the working directory inside the container
WORKDIR /usr/src/app

# Copy the compiled Kotlin code (JAR file) into the container
COPY build/libs/*.jar app.jar

# Specify the command to run your application
CMD ["java", "-jar", "app.jar"]