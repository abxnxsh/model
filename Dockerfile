# Build stage
FROM maven:3.9.9-jdk-17 AS builder
WORKDIR /app
COPY . .
RUN mvn clean package -Pstaging

# Run stage
FROM openjdk:17-jre-slim
WORKDIR /app
COPY --from=builder /app/target/my-app-1.0-SNAPSHOT.jar app.jar
ENTRYPOINT ["java", "-jar", "app.jar"]
