# OCaml language image layered on the common base.

ARG BASE_IMAGE=multipl-e-evaluation-base:latest
FROM ${BASE_IMAGE}

ARG DEBIAN_FRONTEND=noninteractive

# Install OCaml interpreter
RUN apt-get update -yqq \
 && apt-get install -yqq --no-install-recommends ocaml-interp ocaml \
 && rm -rf /var/lib/apt/lists/*

# Sanity check
RUN echo 'print_endline "ok"' > /tmp/p.ml \
 && ocaml /tmp/p.ml | grep -q '^ok$' \
 && rm -f /tmp/p.ml \
 && ocaml -version

# Base image already sets the Lambda entrypoint and copies /var/task.

