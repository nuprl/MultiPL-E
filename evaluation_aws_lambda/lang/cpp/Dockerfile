# C++ language image layered on the common base.
# The base image already installs build-essential (gcc/g++/make).

ARG BASE_IMAGE=multipl-e-evaluation-base:latest
FROM ${BASE_IMAGE}

# Sanity check the toolchain availability and C++17 support
RUN g++ --version && echo "int main(){}" > /tmp/t.cpp \
 && g++ -std=c++17 /tmp/t.cpp -o /tmp/t \
 && /tmp/t && rm -f /tmp/t.cpp /tmp/t

# Base image already sets the Lambda entrypoint and copies /var/task.

