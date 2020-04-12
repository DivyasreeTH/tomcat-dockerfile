#tomcat-dockerfile

##Prerequisites
1) Create empty dockerfile 
> touch Dockerfile
2) Change dockerfile using listing below

##Listing

FROM tomcat:8.0  
ADD hello-1.0.war /usr/local/tomcat/webapps/   
EXPOSE 8080  
CMD ["catalina.sh", "run"]   

##Building
3) Run following command 

> docker build -t tomcat8 .

##Running
4) run docker container tomcat8

> docker run -it -d -p 8080:8080 tomcat8

Done!

##Checking

Open your browser at http://localhost:8080/hello-1.0

##Demo

http://95.179.218.200:8080/hello-1.0/
