# D language image layered on the common base.
# Installs DMD 2.111.0 via the official installer and exposes rdmd.

ARG BASE_IMAGE=multipl-e-evaluation-base:latest
FROM ${BASE_IMAGE}

ARG DEBIAN_FRONTEND=noninteractive

# Install DMD (specific version for reproducibility) under /opt to be usable by non-root
RUN mkdir -p /opt/dlang \
 && wget -qO /opt/dlang/install.sh https://dlang.org/install.sh \
 && bash /opt/dlang/install.sh install dmd-2.111.0 --path /opt/dlang

# Configure paths expected by the evaluator
ENV PATH="/opt/dlang/dmd-2.111.0/linux/bin64:${PATH}"
ENV LD_LIBRARY_PATH="/opt/dlang/dmd-2.111.0/linux/lib64:${LD_LIBRARY_PATH}"
ENV LIBRARY_PATH="/opt/dlang/dmd-2.111.0/linux/lib64:${LIBRARY_PATH}"
ENV DMD=dmd
ENV DC=dmd

# Sanity check: ensure dmd/rdmd work and run a tiny program
RUN dmd --version \
 && rdmd --help > /dev/null \
 && printf 'import std.stdio; void main(){ writeln("ok"); }' > /tmp/p.d \
 && rdmd /tmp/p.d | grep -q '^ok$' \
 && rm -f /tmp/p.d

# Ensure toolchain is readable/executable by Lambda user
RUN chmod -R a+rx /opt/dlang \
 && ln -sf /opt/dlang/dmd-2.111.0/linux/bin64/rdmd /usr/local/bin/rdmd \
 && ln -sf /opt/dlang/dmd-2.111.0/linux/bin64/dmd /usr/local/bin/dmd

# Base image already sets the Lambda entrypoint and copies /var/task.
