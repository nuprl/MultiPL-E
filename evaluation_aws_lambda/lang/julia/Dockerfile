# Julia language image layered on the common base.

ARG BASE_IMAGE=multipl-e-evaluation-base:latest
FROM ${BASE_IMAGE}

# Install Julia 1.8.2
RUN curl -fsSL https://julialang-s3.julialang.org/bin/linux/x64/1.8/julia-1.8.2-linux-x86_64.tar.gz \
    | tar xz -C / \
 && ln -s /julia-1.8.2/bin/julia /usr/local/bin/julia

# Sanity check
RUN julia -e 'println("ok")' | grep -q '^ok$' \
 && julia --version

# Base image already sets the Lambda entrypoint and copies /var/task.

