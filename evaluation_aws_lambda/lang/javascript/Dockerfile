# JavaScript language image layered on the common base.

ARG BASE_IMAGE=multipl-e-evaluation-base:latest
FROM ${BASE_IMAGE}

ARG DEBIAN_FRONTEND=noninteractive

# Install Node.js from NodeSource
RUN curl -fsSL https://deb.nodesource.com/setup_current.x | bash - \
 && apt-get install -yqq --no-install-recommends nodejs \
 && rm -rf /var/lib/apt/lists/*

# Sanity check
RUN node -v \
 && printf 'console.log("ok")\n' > /tmp/p.js \
 && node /tmp/p.js | grep -q '^ok$' \
 && rm -f /tmp/p.js

# Base image already sets the Lambda entrypoint and copies /var/task.

