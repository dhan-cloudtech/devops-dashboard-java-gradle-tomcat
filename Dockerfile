# ====== Stage 1: Build the WAR file ======
FROM gradle:8.12.1-jdk17-alpine AS builder

# Set working directory
WORKDIR /app

# Copy Gradle wrapper and config files
COPY gradlew gradlew.bat build.gradle settings.gradle /app/
COPY gradle /app/gradle

# Copy application source code
COPY src /app/src

# Grant execute permission to the Gradle wrapper
RUN chmod +x /app/gradlew

# Build the WAR file (excluding tests for faster builds)
RUN ./gradlew clean bootWar -x test

# ====== Stage 2: Deploy WAR on Tomcat ======
FROM tomcat:11.0.3-jdk17-temurin-noble

# Remove default ROOT application
RUN rm -rf /usr/local/tomcat/webapps/*

# Set work directory in Tomcat
WORKDIR /usr/local/tomcat/webapps/

# Copy the WAR file from the builder stage and rename it to ROOT.war
COPY --from=builder /app/build/libs/*.war ROOT.war

# Expose Tomcat default port
EXPOSE 8080

# Start Tomcat
CMD ["catalina.sh", "run"]
