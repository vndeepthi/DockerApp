# Alpine Linux with OpenJDK JRE
FROM openjdk:17-alpine

# Copy war file
COPY /target/DockerApp-0.0.1-SNAPSHOT.jar /DockerApp.jar

# run the app
ENTRYPOINT ["java", \
    "-Djava.security.egd=file:/dev/./urandom", \
    "-jar", \
    "/DockerApp.jar"]




