# Clojure language image layered on the common base.
# Installs Java (JDK headless) and Clojure via the official installer.

ARG BASE_IMAGE=multipl-e-evaluation-base:latest
FROM ${BASE_IMAGE}

ARG DEBIAN_FRONTEND=noninteractive

# Java runtime/toolchain required by Clojure
RUN apt-get update -yqq \
 && apt-get install -yqq --no-install-recommends \
      default-jdk-headless \
 && rm -rf /var/lib/apt/lists/*

# Clojure - https://clojure.org/guides/install_clojure#_linux_instructions
RUN curl -L -O https://github.com/clojure/brew-install/releases/latest/download/linux-install.sh \
 && chmod +x linux-install.sh \
 && ./linux-install.sh --prefix /clojure \
 && rm -f linux-install.sh

ENV PATH="/clojure/bin:${PATH}"

# Pre-fetch core deps to warm caches during build
RUN clojure -P

# Make clojure runtime jars available to non-root at runtime (Lambda user)
RUN mkdir -p /opt/clojure \
 && cp -v /root/.m2/repository/org/clojure/clojure/1.12.1/clojure-1.12.1.jar /opt/clojure/ 2>/dev/null || true \
 && cp -v /root/.m2/repository/org/clojure/spec.alpha/0.5.238/spec.alpha-0.5.238.jar /opt/clojure/ 2>/dev/null || true \
 && cp -v /root/.m2/repository/org/clojure/core.specs.alpha/0.4.74/core.specs.alpha-0.4.74.jar /opt/clojure/ 2>/dev/null || true \
 && chmod 0755 /opt/clojure \
 && chmod 0644 /opt/clojure/*.jar || true

# Base image already sets the Lambda entrypoint and copies /var/task.
