# Stage 1: Build
FROM maven:3.8.3-openjdk-17 AS build
WORKDIR /app
COPY . .
RUN mvn clean package -DskipTests

# Stage 2: Run
FROM openjdk:17-jdk-slim
WORKDIR /app
ARG JAR_FILE=target/*.jar
COPY --from=build /app/${JAR_FILE} DemoManyRequest.jar
EXPOSE 8080
ENTRYPOINT ["java", "-jar", "DemoManyRequest.jar"]