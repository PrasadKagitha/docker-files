FROM centos
RUN yum update -y
RUN yum install -y java-1.8.0-openjdk-devel
COPY HelloWorld.java /HelloWorld.java
RUN javac /HelloWorld.java
ENTRYPOINT ["java", "-cp" ,"/", "HelloWorld"]