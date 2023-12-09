FROM ubuntu:22.04
ARG DEBIAN_FRONTEND=noninteractive
ENV TZ=Etc/UTC
RUN apt-get update -yqq && apt-get install -yqq \
    curl racket build-essential python3-pip python3-tqdm \
    default-jdk-headless \
    golang-go \
    php-cli \
    ruby \
    lua5.3 \
    r-base \
    rustc \
    scala \
    ocaml-interp \
    ocaml \
    ghc \
    libtest-deep-perl \
    wget \
    lua-unit \ 
    aspnetcore-runtime-6.0 \
    z3

RUN apt-get install -yqq libtest-deep-perl
RUN apt-get install -yqq wget

# JS/TS
RUN curl -fsSL https://deb.nodesource.com/setup_current.x | bash -
RUN apt-get install -y nodejs
RUN npm install -g typescript

# Dlang
RUN wget https://netcologne.dl.sourceforge.net/project/d-apt/files/d-apt.list -O /etc/apt/sources.list.d/d-apt.list
RUN apt-get update --allow-insecure-repositories
RUN apt-get -y --allow-unauthenticated install --reinstall d-apt-keyring
RUN apt-get update && apt-get install -yqq dmd-compiler dub

# C#
RUN apt install gnupg ca-certificates
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
RUN echo "deb https://download.mono-project.com/repo/ubuntu stable-focal main" | tee /etc/apt/sources.list.d/mono-official-stable.list
RUN apt update --allow-insecure-repositories
RUN apt install -yqq mono-devel

# F#
RUN apt-get install -y dotnet6

# Post-processing

# Julia
RUN curl https://julialang-s3.julialang.org/bin/linux/x64/1.8/julia-1.8.2-linux-x86_64.tar.gz | tar xz
ENV PATH="/julia-1.8.2/bin:${PATH}"
# Swift
RUN curl https://download.swift.org/swift-5.7-release/ubuntu2204/swift-5.7-RELEASE/swift-5.7-RELEASE-ubuntu22.04.tar.gz | tar xz
ENV PATH="/swift-5.7-RELEASE-ubuntu22.04/usr/bin:${PATH}"
# Javatuples
RUN mkdir /usr/multiple && wget https://repo.mavenlibs.com/maven/org/javatuples/javatuples/1.2/javatuples-1.2.jar -O /usr/multiple/javatuples-1.2.jar

# Luau
RUN wget https://github.com/Roblox/luau/releases/download/0.594/luau-ubuntu.zip -O /tmp/luau.zip && unzip /tmp/luau.zip -d /bin/

# Elixir
RUN wget https://binaries2.erlang-solutions.com/ubuntu/pool/contrib/e/elixir/elixir_1.15.4_1_otp_26.0.2~ubuntu~jammy_all.deb -O /tmp/elixir.deb && dpkg -i /tmp/elixir.deb

# Dafny
# https://github.com/dafny-lang/dafny/releases/download/v4.3.0/dafny-4.3.0-x64-ubuntu-20.04.zip
RUN mkdir -p /root/dafny
RUN wget https://github.com/dafny-lang/dafny/releases/download/v4.3.0/dafny-4.3.0-x64-ubuntu-20.04.zip -O /tmp/dafny.zip && unzip /tmp/dafny.zip -d /root/dafny/ && ln -s /root/dafny/danfy /bin/dafny

COPY src /code
WORKDIR /code
ENTRYPOINT ["python3", "main.py"]
