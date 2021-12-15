FROM openjdk:8-jdk-alpine
ARG JAR_FILE=build/libs/*.jar
COPY build/libs/*.jar app.jar

RUN mkdir destination-dir-for-add
ADD sample.tar.gz /destination-dir-for-add

ENTRYPOINT ["java","-jar","/app.jar"]

