FROM ubuntu:22.04
RUN apt-get update

RUN DEBIAN_FRONTEND=noninteractive TZ=Etc/UTC apt-get -yq install tzdata build-essential wget
RUN apt-get install -yq cargo lua5.1 r-base-core php-cli racket ruby openjdk-17-jdk-headless
RUN apt-get install -y mono-mcs
RUN apt-get install -yq python3-pip
RUN pip3 install yamlize
RUN wget https://deb.nodesource.com/setup_18.x 
RUN bash setup_18.x
RUN apt-get install -y nodejs
WORKDIR /multipleval/src