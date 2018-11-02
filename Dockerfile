FROM ubuntu

WORKDIR /

RUN apt-get update
RUN apt-get install -y curl
RUN apt-get install -y netcat

RUN apt-get install -y openjdk-8-jdk 

ENV JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64

COPY pf-install-9.1.3.sh .
COPY pingfederate-9.1.3.tar.gz .
RUN ./pf-install-9.1.3.sh