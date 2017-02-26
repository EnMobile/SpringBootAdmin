FROM openjdk
VOLUME /tmp
ADD http://central.maven.org/maven2/de/codecentric/spring-boot-admin-server/1.4.6/spring-boot-admin-server-1.4.6.jar app.jar
RUN bash -c 'touch /app.jar'
EXPOSE 8123
CMD ["java","-Djava.security.egd=file:/dev/./urandom","-jar","/app.jar"]
