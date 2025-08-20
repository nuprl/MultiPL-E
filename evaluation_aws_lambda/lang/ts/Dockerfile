# TypeScript language image layered on the common base.

ARG BASE_IMAGE=multipl-e-evaluation-base:latest
FROM ${BASE_IMAGE}

ARG DEBIAN_FRONTEND=noninteractive

# Install Node.js and TypeScript compiler
RUN curl -fsSL https://deb.nodesource.com/setup_current.x | bash - \
 && apt-get install -yqq --no-install-recommends nodejs \
 && npm install -g typescript \
 && rm -rf /var/lib/apt/lists/*

# Sanity check: compile and run a tiny TS program
RUN node -v && tsc -v \
 && printf 'console.log("ok")\n' > /tmp/p.ts \
 && tsc --target esnext /tmp/p.ts \
 && node /tmp/p.js | grep -q '^ok$' \
 && rm -f /tmp/p.ts /tmp/p.js

# Base image already sets the Lambda entrypoint and copies /var/task.

