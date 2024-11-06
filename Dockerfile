# Build stage
FROM maven:3.8.1-jdk-11 AS builder
WORKDIR /app
COPY . .
RUN mvn clean package -Pstaging

# Run stage
FROM openjdk:11-jre-slim
WORKDIR /app
COPY --from=builder /app/target/my-app-1.0-SNAPSHOT.jar app.jar
ENTRYPOINT ["java", "-jar", "app.jar"]
