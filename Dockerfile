FROM openjdk:21-jdk
WORKDIR /aplicativo
COPY . .
RUN chmod +x mvnw
RUN ./mvnw clean package
CMD ["java", "-jar", "target/dslist-0.0.1-SNAPSHOT.jar"]
