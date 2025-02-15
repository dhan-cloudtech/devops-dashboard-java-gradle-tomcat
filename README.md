# Spring Boot Application

This is a Spring Boot web application project that uses Gradle as the build tool.

## Prerequisites

- JDK 1.8 or later
- Gradle 7.0+ (or use the Gradle Wrapper included in the project)
- Your favorite IDE (IntelliJ IDEA, Eclipse, or VS Code)

## Building the Application

1. Clone the repository to your local machine
2. Navigate to the project root directory
3. Run the following Gradle command to build the application:

```bash
./gradlew build
```

Method 1: Using Gradle
You can run the application using Gradle with the following command:

```bash
./gradlew bootRun
```

### Method 2: Using Java -jar

After building the application, you can run the generated JAR file:

```bash
java -jar build/libs/application-name-0.0.1-SNAPSHOT.jar
```

If War,

```bash
java -jar build/libs/application-name-0.0.1-SNAPSHOT.war
```

# Application Structure

```bash
src/
  ├── main/
  │   ├── java/
  │   │   └── com/
  │   │       └── demo/
  │   │           └── boot/
  │   │               └── AppConfiguration.java
  │   ├── resources/
  │   │   └── application.properties
  │   └── webapp/
  │       └── WEB-INF/
  └── test/

build.gradle
settings.gradle
```

# Dependencies

The application uses the following major dependencies (defined in build.gradle):

- Spring Boot Starter Web
- Spring Boot Starter Tomcat
- JSTL
- Bootstrap (WebJars)

# Configuration

The main application properties can be configured in src/main/resources/application.properties

# Building for Production

To create a production-ready WAR file:

```bash
./gradlew clean build
```

This will create the application archive in the build/libs directory.

# Gradle Tasks

```bash
./gradlew tasks          # Lists all available tasks
./gradlew clean         # Cleans the build directory
./gradlew test          # Runs the tests
./gradlew bootJar       # Creates an executable JAR
./gradlew bootWar       # Creates a WAR file (if configured)
```
