FROM maven:3.8.6-sapmachine-17 as build
WORKDIR /build
COPY . .
RUN mvn clean package -DskipTest


FROM openjdk:17 
WORKDIR /app
COPY --from=build ./build/target/*.jar ./application.jar
EXPOSE 8080

ENTRYPOINT java -jar application.jar