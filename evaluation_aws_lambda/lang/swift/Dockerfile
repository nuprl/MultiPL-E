# Swift language image layered on the common base.

ARG BASE_IMAGE=multipl-e-evaluation-base:latest
FROM ${BASE_IMAGE}

# Install Swift 5.7 for Ubuntu 22.04
RUN curl -fsSL https://download.swift.org/swift-5.7-release/ubuntu2204/swift-5.7-RELEASE/swift-5.7-RELEASE-ubuntu22.04.tar.gz \
    | tar xz -C / \
 && ln -s /swift-5.7-RELEASE-ubuntu22.04/usr/bin/swiftc /usr/local/bin/swiftc \
 && ln -s /swift-5.7-RELEASE-ubuntu22.04/usr/bin/swift /usr/local/bin/swift

# Sanity check: compile and run a tiny Swift program
RUN printf 'print("ok")\n' > /tmp/p.swift \
 && swiftc /tmp/p.swift -o /tmp/p \
 && /tmp/p | grep -q '^ok$' \
 && rm -f /tmp/p.swift /tmp/p \
 && swift --version

# Base image already sets the Lambda entrypoint and copies /var/task.

