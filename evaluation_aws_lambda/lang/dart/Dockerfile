# Dart language image layered on the common base.

ARG BASE_IMAGE=multipl-e-evaluation-base:latest
FROM ${BASE_IMAGE}

ARG DEBIAN_FRONTEND=noninteractive

# Install Dart from Google's APT repository
RUN wget -qO- https://dl-ssl.google.com/linux/linux_signing_key.pub \
    | gpg --dearmor -o /usr/share/keyrings/dart.gpg \
 && echo 'deb [signed-by=/usr/share/keyrings/dart.gpg arch=amd64] https://storage.googleapis.com/download.dartlang.org/linux/debian stable main' \
    | tee /etc/apt/sources.list.d/dart_stable.list \
 && apt-get update -yqq \
 && apt-get install -yqq --no-install-recommends dart \
 && rm -rf /var/lib/apt/lists/*

# Sanity check
RUN dart --version \
 && echo 'void main(){ print("ok"); }' > /tmp/p.dart \
 && dart /tmp/p.dart | grep -q '^ok$' \
 && rm -f /tmp/p.dart

# Base image already sets the Lambda entrypoint and copies /var/task.

