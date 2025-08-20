# Bash (sh) image layered on the common base.

ARG BASE_IMAGE=multipl-e-evaluation-base:latest
FROM ${BASE_IMAGE}

# Ubuntu base already includes bash; just sanity check.
RUN bash --version \
 && printf 'echo ok\n' > /tmp/p.sh \
 && bash /tmp/p.sh | grep -q '^ok$' \
 && rm -f /tmp/p.sh

# Base image already sets the Lambda entrypoint and copies /var/task.

