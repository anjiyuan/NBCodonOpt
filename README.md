# Helpful article

http://geekyplatypus.com/packaging-and-serving-your-java-application-with-docker/
https://stackoverflow.com/questions/66806582/tomcat-10-0-4-doesnt-load-servlets-webservlet-classes-with-404-error

# Keywords

Java 11
Tomcat 10
Docker

# Package the war

mvn package

# Starting tomcat in docker

docker run -it \
-p 8080:8080 \
-v $(pwd)/target/NBCodonOpt.war:/usr/local/tomcat/webapps/NBCodonOpt.war \
tomcat

# Or as the root webapp

docker run -it \
-p 8080:8080 \
-v $(pwd)/target/NBCodonOpt.war:/usr/local/tomcat/webapps/ROOT.war \
-v $(pwd)/target/NBCodonOpt:/usr/local/tomcat/webapps/ROOT \
tomcat