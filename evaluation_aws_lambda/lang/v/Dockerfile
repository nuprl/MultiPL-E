# Coq image layered on the common base (directory name 'v' matches evaluator).

ARG BASE_IMAGE=multipl-e-evaluation-base:latest
FROM ${BASE_IMAGE}

ARG DEBIAN_FRONTEND=noninteractive

# Install Coq
RUN apt-get update -yqq \
 && apt-get install -yqq --no-install-recommends coq \
 && rm -rf /var/lib/apt/lists/*

# Sanity check: run coqc --version
RUN coqc --version

# Base image already sets the Lambda entrypoint and copies /var/task.

