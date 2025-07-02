# Build WAR using Maven
FROM maven:3.9.6-eclipse-temurin-17 AS build

WORKDIR /app

# Copy the project files
COPY . .

# Build WAR file
RUN mvn clean package -DskipTests

# Deploy WAR to Tomcat
FROM tomcat:9.0-jdk17

RUN rm -rf /usr/local/tomcat/webapps/*

# Copy the built WAR file to Tomcat
COPY --from=build /app/target/Miniproject.war /usr/local/tomcat/webapps/ROOT.war

EXPOSE 8080
