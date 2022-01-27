# Helpful article

http://geekyplatypus.com/packaging-and-serving-your-java-application-with-docker/

# Keywords

Java 17
Tomcat 10
Docker

# First time: Create the web application scaffold

mvn archetype:generate \
-DgroupId=au.edu.qut.nbcodonopt \
-DartifactId=NBCodonOpt \
-DarchetypeArtifactId=maven-archetype-webapp \
-DinteractiveMode=false

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
tomcat:jdk17-openjdk-slim