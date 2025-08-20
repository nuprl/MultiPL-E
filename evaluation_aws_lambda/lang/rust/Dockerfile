# Rust language image layered on the common base.

ARG BASE_IMAGE=multipl-e-evaluation-base:latest
FROM ${BASE_IMAGE}

ARG DEBIAN_FRONTEND=noninteractive

# Install Rust compiler (rustc)
RUN apt-get update -yqq \
 && apt-get install -yqq --no-install-recommends rustc \
 && rm -rf /var/lib/apt/lists/*

# Sanity check: compile and run a tiny program
RUN printf 'fn main(){ println!("ok"); }' > /tmp/p.rs \
 && rustc /tmp/p.rs -o /tmp/p \
 && /tmp/p | grep -q '^ok$' \
 && rm -f /tmp/p.rs /tmp/p \
 && rustc --version

# Base image already sets the Lambda entrypoint and copies /var/task.

