# Perl language image layered on the common base.

ARG BASE_IMAGE=multipl-e-evaluation-base:latest
FROM ${BASE_IMAGE}

ARG DEBIAN_FRONTEND=noninteractive

# Install Perl and helpful testing module (as used in the previous monolithic image)
RUN apt-get update -yqq \
 && apt-get install -yqq --no-install-recommends perl libtest-deep-perl \
 && rm -rf /var/lib/apt/lists/*

# Sanity check
RUN perl -e 'print "ok\n"' | grep -q '^ok$'

# Base image already sets the Lambda entrypoint and copies /var/task.

