# Luau language image layered on the common base.

ARG BASE_IMAGE=multipl-e-evaluation-base:latest
FROM ${BASE_IMAGE}

# Install Luau binaries (luau, luau-analyze)
RUN wget -q https://github.com/Roblox/luau/releases/download/0.594/luau-ubuntu.zip -O /tmp/luau.zip \
 && unzip -q /tmp/luau.zip -d /bin/ \
 && rm -f /tmp/luau.zip

# Sanity check
RUN command -v luau && command -v luau-analyze \
 && printf 'print("ok")\n' > /tmp/p.luau \
 && luau-analyze /tmp/p.luau \
 && luau /tmp/p.luau | grep -q '^ok$' \
 && rm -f /tmp/p.luau

# Base image already sets the Lambda entrypoint and copies /var/task.

