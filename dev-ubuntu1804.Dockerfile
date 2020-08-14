# Docker build environment for Ubuntu 18.04
# run as docker build -f dev-ubuntu2004.Dockerfile .

FROM ubuntu:18.04

ENV JBLAS_VERSION=1.2.4-SNAPSHOT

RUN apt-get update
RUN apt-get -y install less htop build-essential vim ruby
#RUN apt-get -y install libgfortran
RUN apt-get -y install openjdk-8-jdk-headless maven ant
RUN apt-get -y install gfortran libopenblas-dev
RUN update-alternatives --set java /usr/lib/jvm/java-8-openjdk-amd64/jre/bin/java

CMD mkdir /home/dev
WORKDIR /home/dev