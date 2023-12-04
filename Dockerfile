FROM openjdk:17-jdk

VOLUME /tmp

ARG JAR_FILE="build/libs/*.jar"

COPY ${JAR_FILE} app.jar

ENV PROFILE release

ENTRYPOINT ["java", "-Dspring.profiles.active=${PROFILE}", "-jar","/app.jar"]