FROM ubuntu:22.04
ARG DEBIAN_FRONTEND=noninteractive
ENV TZ=Etc/UTC

RUN apt-get update -yqq && apt-get install -yqq python3-tqdm wget xz-utils

# Zig — TODO Use APT on Ubuntu post-22.04.
RUN wget https://ziglang.org/download/0.15.2/zig-x86_64-linux-0.15.2.tar.xz -O /tmp/zig.tar.xz && \
    tar xf /tmp/zig.tar.xz -C /opt && \
    rm /tmp/zig.tar.xz
ENV PATH="/opt/zig-x86_64-linux-0.15.2:${PATH}"

COPY src /code
WORKDIR /code
ENTRYPOINT ["python3", "main.py"]
