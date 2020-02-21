FROM geektown/python37-debian10:v1.0.0
#Can be pulled from dockerhub project: geektown/python37-debian10:v1.0.0
# install gcc, vim .etc. to prevent GPL license risk.

RUN apt-get update && apt-get install -y --no-install-recommends \
    vim \
    curl

RUN curl -O https://cdn.azul.com/zulu/bin/zulu8.28.0.1-jdk8.0.163-linux_x64.tar.gz && \
    tar -zxf zulu8.28.0.1-jdk8.0.163-linux_x64.tar.gz -C /usr/local/lib/ && \
    rm -f zulu8.28.0.1-jdk8.0.163-linux_x64.tar.gz && \
    mv /usr/local/lib/zulu8.28.0.1-jdk8.0.163-linux_x64 /usr/local/lib/openjdk

ENV JAVA_HOME /usr/local/lib/openjdk
