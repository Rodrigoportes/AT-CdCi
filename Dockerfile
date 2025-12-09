# Usa uma imagem base com o Java 17
FROM eclipse-temurin:17-jdk-focal

ARG JAR_FILE=target/AT-CdCi-1.0-SNAPSHOT.jar

COPY ${JAR_FILE} app.jar

ENTRYPOINT ["java", "-jar", "/app.jar"]