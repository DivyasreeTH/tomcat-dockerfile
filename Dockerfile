FROM tomcat:8.0
WORKDIR /tmp
RUN apt update && apt install -y default-jdk git maven
EXPOSE 8080
RUN git clone https://github.com/boxfuse/boxfuse-sample-java-war-hello.git
WORKDIR /tmp/boxfuse-sample-java-war-hello/
RUN mvn package
WORKDIR /tmp/boxfuse-sample-java-war-hello/target/
RUN cp hello-1.0.war /usr/local/tomcat/webapps/
