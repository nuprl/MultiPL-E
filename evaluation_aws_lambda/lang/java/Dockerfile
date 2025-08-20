# Java language image layered on the common base.

ARG BASE_IMAGE=multipl-e-evaluation-base:latest
FROM ${BASE_IMAGE}

ARG DEBIAN_FRONTEND=noninteractive

# Install headless JDK for javac/java
RUN apt-get update -yqq \
 && apt-get install -yqq --no-install-recommends default-jdk-headless \
 && rm -rf /var/lib/apt/lists/*

# Add javatuples jar used by the evaluator
RUN mkdir -p /usr/multiple \
 && wget -q https://repo.mavenlibs.com/maven/org/javatuples/javatuples/1.2/javatuples-1.2.jar -O /usr/multiple/javatuples-1.2.jar

# Sanity check: compile and run a tiny program
RUN printf 'public class Problem { public static void main(String[] a){ System.out.println("ok"); }}' > /tmp/Problem.java \
 && javac -encoding UTF8 -d /tmp /tmp/Problem.java \
 && java -ea -cp /tmp:/usr/multiple/javatuples-1.2.jar Problem | grep -q '^ok$' \
 && rm -f /tmp/Problem.java /tmp/Problem.class

# Base image already sets the Lambda entrypoint and copies /var/task.

