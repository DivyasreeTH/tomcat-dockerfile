#tomcat-dockerfile

##Prerequisites
1) Create empty dockerfile 
> touch Dockerfile
2) Change dockerfile using listing below

##Listing

FROM tomcat:8.0  
WORKDIR /tmp  
RUN apt update && apt install -y default-jdk git maven  
EXPOSE 8080  
RUN git clone https://github.com/boxfuse/boxfuse-sample-java-war-hello.git  
WORKDIR /tmp/boxfuse-sample-java-war-hello/  
RUN mvn package  
WORKDIR /tmp/boxfuse-sample-java-war-hello/target/  
RUN cp hello-1.0.war /usr/local/tomcat/webapps/     

##Building  
3) Run following command

> docker build -t tomcat8-full .

##Running  
4) run docker container tomcat8

> docker run  -d -p 8080:8080 tomcat8-full

Done!

##Checking

Open your browser at http://localhost:8080/hello-1.0

##Demo

http://95.179.218.200:8080/hello-1.0/
