FROM amazoncorretto:17-alpine3.16

WORKDIR /app-home

COPY .mvn/ .mvn
COPY mvnw pom.xml ./
RUN ./mvnw dependency:resolve

COPY src ./src
EXPOSE 8180

CMD ["./mvnw", "spring-boot:run"]