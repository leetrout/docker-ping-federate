FROM centos:7

WORKDIR /

RUN yum update -y
RUN yum install -y java-1.8.0-openjdk-devel
RUN yum install -y which nc

ENV JAVA_HOME=/usr/lib/jvm/java-1.8.0-openjdk-1.8.0.201.b09-2.el7_6.x86_64

COPY pf-install.sh .
RUN chmod +x pf-install.sh
RUN ./pf-install.sh

COPY run.properties /usr/local/pingfederate-1/bin/
CMD /usr/local/pingfederate-1/bin/run.sh
