# ---------- Build Stage ----------
FROM maven:3.9.6-eclipse-temurin-17 AS build

# Create app directory
WORKDIR /app

# Copy entire project into container
COPY . .

# Change to the folder where pom.xml exists
WORKDIR /app/Miniproject_UPdated

# Build WAR
RUN mvn clean package -DskipTests

# ---------- Runtime Stage ----------
FROM tomcat:9.0-jdk17

# Remove default Tomcat apps
RUN rm -rf /usr/local/tomcat/webapps/*

# Copy built WAR to Tomcat webapps
COPY --from=build /app/Miniproject_UPdated/target/Miniproject.war /usr/local/tomcat/webapps/ROOT.war

# Expose port
EXPOSE 8080
