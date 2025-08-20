# Haskell language image layered on the common base.
# Provides GHC and runghc for script execution.

ARG BASE_IMAGE=multipl-e-evaluation-base:latest
FROM ${BASE_IMAGE}

ARG DEBIAN_FRONTEND=noninteractive

# Install GHC (includes runghc)
RUN apt-get update -yqq \
 && apt-get install -yqq --no-install-recommends ghc \
 && rm -rf /var/lib/apt/lists/*

# Sanity check: run a simple script with runghc
RUN echo 'main = putStrLn "ok"' > /tmp/p.hs \
 && runghc /tmp/p.hs | grep -q '^ok$' \
 && rm -f /tmp/p.hs \
 && ghc --version

# Base image already sets the Lambda entrypoint and copies /var/task.

