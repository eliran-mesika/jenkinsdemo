FROM java:8-jdk-alpine
COPY ["./target/demo-*.jar", "/usr/app/demo-0.0.1-SNAPSHOT.jar"]

WORKDIR /usr/app
RUN sh -c 'touch demo-0.0.1-SNAPSHOT.jar'

RUN sh -c 'chmod 775 demo-0.0.1-SNAPSHOT.jar'

EXPOSE 8080

ENTRYPOINT ["java","-jar","demo-0.0.1-SNAPSHOT.jar"]

CMD ["java", "-jar", "demo-0.0.1-SNAPSHOT.jar"]
