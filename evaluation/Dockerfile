FROM ubuntu:22.04
RUN apt-get update -yqq
RUN apt-get install -yqq build-essential python3-pip python3-tqdm
RUN apt-get install racket -yqq
ARG DEBIAN_FRONTEND=noninteractive
ENV TZ=Etc/UTC
RUN apt-get install -yqq \
    default-jdk-headless \
    golang-go \
    php-cli \
    ruby \
    lua5.3 \
    r-base \
    rustc \
    scala \
    node-typescript
RUN apt-get install -yqq curl
RUN curl https://julialang-s3.julialang.org/bin/linux/x64/1.8/julia-1.8.2-linux-x86_64.tar.gz | tar xz
ENV PATH="/julia-1.8.2/bin:${PATH}"
# .NET 6 includes the C# compiler
RUN apt-get install -yqq \
    dotnet6
# Swift
RUN curl https://download.swift.org/swift-5.7-release/ubuntu2204/swift-5.7-RELEASE/swift-5.7-RELEASE-ubuntu22.04.tar.gz | tar xz
ENV PATH="/swift-5.7-RELEASE-ubuntu22.04/usr/bin:${PATH}"
COPY src /code
WORKDIR /code
ENTRYPOINT ["python3", "main.py"]