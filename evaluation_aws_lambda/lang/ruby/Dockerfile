# Ruby language image layered on the common base.

ARG BASE_IMAGE=multipl-e-evaluation-base:latest
FROM ${BASE_IMAGE}

ARG DEBIAN_FRONTEND=noninteractive

# Install Ruby
RUN apt-get update -yqq \
 && apt-get install -yqq --no-install-recommends ruby \
 && rm -rf /var/lib/apt/lists/*

# Sanity check
RUN ruby -e 'puts "ok"' | grep -q '^ok$'

# Base image already sets the Lambda entrypoint and copies /var/task.

