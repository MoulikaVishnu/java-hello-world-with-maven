FROM eclipse-temurin:17-jdk-alpine 
RUN mkdir /app
COPY --from=builder /app/target/*.jar /app/app.jar
ENV SERVER_PORT=6060
WORKDIR /app
EXPOSE 6060
ENTRYPOINT ["java","-jar","/app.jar"]
