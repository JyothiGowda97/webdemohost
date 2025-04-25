FROM maven:3.8.2-openjdk-8 AS builder
WORKDIR /app
COPY . .
RUN mvn clean package
RUN ls target/

FROM tomcat:jre8-temurin-focal AS deploy
COPY --from=builder /app/target/hello-world-war-3.1.1.war /usr/local/tomcat/webapps/
EXPOSE 8080
CMD ["catalina.sh", "run"]
