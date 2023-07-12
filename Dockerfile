FROM openjdk:17-alpine as buildOne

WORKDIR /app

COPY build/libs/*-SNAPSHOT.jar ./app.jar

RUN addgroup -g 1001 -S spring-group
RUN adduser -u 1001 -S spring-user

USER spring-user

EXPOSE 8080

ENTRYPOINT java -jar app.jar
