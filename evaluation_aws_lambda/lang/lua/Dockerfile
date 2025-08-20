# Lua language image layered on the common base.

ARG BASE_IMAGE=multipl-e-evaluation-base:latest
FROM ${BASE_IMAGE}

ARG DEBIAN_FRONTEND=noninteractive

# Install Lua and lua-unit (used by some tests)
RUN apt-get update -yqq \
 && apt-get install -yqq --no-install-recommends lua5.3 lua-unit \
 && rm -rf /var/lib/apt/lists/*

# Sanity check
RUN lua -v \
 && printf 'print("ok")\n' > /tmp/p.lua \
 && lua /tmp/p.lua | grep -q '^ok$' \
 && rm -f /tmp/p.lua

# Base image already sets the Lambda entrypoint and copies /var/task.

