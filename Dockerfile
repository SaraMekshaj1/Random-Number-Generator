FROM eclipse-temurin:19-alpine
VOLUME /tmp
EXPOSE 8087
ARG JAR_FILE=./target/RandomNumberGenerator-0.0.1-SNAPSHOT.jar
ADD ${JAR_FILE} app.jar
ENTRYPOINT ["java","-jar","/app.jar"]
