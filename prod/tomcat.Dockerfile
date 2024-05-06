FROM openjdk:8-jdk-alpine

RUN wget https://archive.apache.org/dist/tomcat/tomcat-8/v8.5.100/bin/apache-tomcat-8.5.100.tar.gz \
    && tar -xzvf apache-tomcat-8.5.100.tar.gz \
    && mv apache-tomcat-8.5.100 /opt/tomcat \
    && rm apache-tomcat-8.5.100.tar.gz \
    && chmod +x /opt/tomcat/bin/*.sh

EXPOSE 8080

CMD ["/opt/tomcat/bin/catalina.sh", "run"]