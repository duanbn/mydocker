FROM centos
MAINTAINER DuanBingnan "duanbn@126.com"

# Install Base Soft
RUN yum -y install tree
RUN yum -y install wget
RUN yum -y install vim
RUN yum -y install git

# Install JDK 8
ADD ./jdk1.8.0_144.tar.gz /tmp
RUN mkdir -p /usr/local/java
RUN mv /tmp/jdk1.8.0_144 /usr/local/java/jdk8/

# Install Maven 3.5.0
RUN cd /tmp && wget http://mirror.bit.edu.cn/apache/maven/maven-3/3.5.0/binaries/apache-maven-3.5.0-bin.tar.gz && tar -zxf ./apache-maven-3.5.0-bin.tar.gz
RUN mkdir -p /usr/local/maven
RUN mv /tmp/apache-maven-3.5.0 /usr/local/maven
RUN rm /tmp/apache-maven-3.5.0-bin.tar.gz

# Set ENV
ENV JAVA_HOME /usr/local/java/jdk8
ENV MAVEN_HOME /usr/local/maven/apache-maven-3.5.0
ENV PATH $PATH:$JAVA_HOME/bin:$MAVEN_HOME/bin

RUN mkdir -p /tmp/build/java/src /tmp/build/java/jar /tmp/build/java/war
