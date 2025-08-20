# Python language image layered on the common base.
# The base already installs Python 3 and required handler libraries.

ARG BASE_IMAGE=multipl-e-evaluation-base:latest
FROM ${BASE_IMAGE}

# Sanity check
RUN python3 -V \
 && python3 - <<'PY' | grep -q '^ok$'
print('ok')
PY

# Base image already sets the Lambda entrypoint and copies /var/task.

