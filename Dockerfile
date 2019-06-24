FROM centos:7

RUN yum install -y java-1.8.0-openjdk

VOLUME /tmp
COPY /target/sailor-docker-centos-0.0.1-SNAPSHOT.jar /app/myapp.jar
RUN sh -c 'touch myapp.jar'
ENTRYPOINT ["java", "-Djava.security.egd=file:/dev/./urandom", "-jar", "/app/myapp.jar"]