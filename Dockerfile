# Alpine Linux with OpenJDK JRE
FROM maven:3.8.3-openjdk-8
## download dependencies
ADD pom.xml /
RUN mvn verify clean
## build after dependencies are down so it wont redownload unless the POM changes
ADD . /
RUN mvn package

FROM openjdk:8-alpine3.7

WORKDIR /root/

# Copy war file
COPY --from=0 /target/DockerApp-0.0.1-SNAPSHOT.jar /DockerApp.jar

# run the app
ENTRYPOINT ["java", \
    "-Djava.security.egd=file:/dev/./urandom", \
    "-jar", \
    "/DockerApp.jar"]




