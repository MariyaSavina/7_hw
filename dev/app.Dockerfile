FROM ubuntu:18.04
RUN apt update
RUN apt install -y git default-jdk maven 
WORKDIR /tmp/boxfuse
RUN git clone https://github.com/boxfuse/boxfuse-sample-java-war-hello.git
WORKDIR /tmp/boxfuse/boxfuse-sample-java-war-hello
RUN mvn package