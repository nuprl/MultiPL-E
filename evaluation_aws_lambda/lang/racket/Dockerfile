# Racket language image layered on the common base.

ARG BASE_IMAGE=multipl-e-evaluation-base:latest
FROM ${BASE_IMAGE}

ARG DEBIAN_FRONTEND=noninteractive

# Install Racket (includes rackunit in standard distribution on Ubuntu)
RUN apt-get update -yqq \
 && apt-get install -yqq --no-install-recommends racket \
 && rm -rf /var/lib/apt/lists/*

# Sanity check
RUN racket -e '(displayln "ok")' | grep -q '^ok$'

# Base image already sets the Lambda entrypoint and copies /var/task.

