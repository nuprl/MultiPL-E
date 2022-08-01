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
RUN wget https://julialang-s3.julialang.org/bin/linux/x64/1.6/julia-1.6.7-linux-x86_64.tar.gz
RUN tar xf julia-1.6.7-linux-x86_64.tar.gz
RUN mv julia-1.6.7 /opt/julia
RUN ln -s /opt/julia/bin/julia /usr/bin/julia
RUN mkdir -p /usr/local/share/lua/5.1
COPY luaunit.lua /usr/local/share/lua/5.1/luaunit.lua
WORKDIR /multipleval/src
