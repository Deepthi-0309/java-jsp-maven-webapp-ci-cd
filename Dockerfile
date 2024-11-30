# Use the official Tomcat base image
FROM tomcat:9.0

# Set environment variables
ENV APP_HOME /usr/local/tomcat/webapps/MyLab
ENV WAR_FILE /usr/local/tomcat/webapps/MyLab.war

# Set the working directory to /app
WORKDIR /app

# Copy the WAR file into the container
COPY target/*.war /usr/local/tomcat/webapps

# Expose the port that Tomcat will run on
EXPOSE 8100

