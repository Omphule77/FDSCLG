# Use official Tomcat image with JDK 17
FROM tomcat:9.0-jdk17

# Clean default webapps
RUN rm -rf /usr/local/tomcat/webapps/*

# Copy your WAR into Tomcat webapps as ROOT.war
COPY target/Miniproject.war /usr/local/tomcat/webapps/ROOT.war

EXPOSE 8080
