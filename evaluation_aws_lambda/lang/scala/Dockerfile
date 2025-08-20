# Scala language image layered on the common base.

ARG BASE_IMAGE=multipl-e-evaluation-base:latest
FROM ${BASE_IMAGE}

ARG DEBIAN_FRONTEND=noninteractive

# Install Java (required) and Scala toolchain
RUN apt-get update -yqq \
 && apt-get install -yqq --no-install-recommends default-jdk-headless scala \
 && rm -rf /var/lib/apt/lists/*

# Sanity check: compile and run a tiny Scala program
RUN printf 'object Problem { def main(a:Array[String]) = println("ok") }' > /tmp/Problem.scala \
 && scalac -d /tmp /tmp/Problem.scala \
 && scala -cp /tmp Problem | grep -q '^ok$' \
 && rm -f /tmp/Problem.scala /tmp/Problem*.class

# Base image already sets the Lambda entrypoint and copies /var/task.

