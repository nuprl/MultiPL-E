# Ada language image layered on the common base.
# Builds Ada toolchain using system GNAT + Alire.

ARG BASE_IMAGE=multipl-e-evaluation-base:latest
FROM ${BASE_IMAGE}

ARG DEBIAN_FRONTEND=noninteractive

# Install Ada compiler and project builder (GNAT + gprbuild)
RUN apt-get update -yqq \
 && apt-get install -yqq --no-install-recommends \
      gnat \
      gprbuild \
 && rm -rf /var/lib/apt/lists/*

# Install Alire (Ada package manager) and select the native system toolchain
ARG ALR_VERSION=2.1.0
ARG ALR_ARCH=x86_64
RUN set -eux; \
  url="https://downloads.sourceforge.net/project/alire.mirror/v${ALR_VERSION}/alr-${ALR_VERSION}-bin-${ALR_ARCH}-linux.zip"; \
  curl -fL "$url" -o /tmp/alr.zip; \
  mkdir -p /opt/alire; \
  unzip -q /tmp/alr.zip -d /opt/alire; \
  ln -s /opt/alire/bin/alr /usr/local/bin/alr; \
  rm -f /tmp/alr.zip

RUN set -eux; \
  alr -n toolchain --select gnat_native; \
  eval "$(alr -n printenv)"; \
  TOOLBIN="$(dirname "$(command -v gnatmake)")"; \
  echo "Detected toolchain bin: ${TOOLBIN}"; \
  test -x "${TOOLBIN}/gnatmake"; \
  test -x "${TOOLBIN}/gprbuild" || true; \
  ln -s "${TOOLBIN}" /opt/gnat-bin

# Ensure GNAT tools are on PATH for builds/tests
ENV PATH="/opt/gnat-bin:${PATH}"

# Quick sanity check
RUN gnatmake --version && gprbuild --version

# Base image already sets the Lambda entrypoint and copies /var/task.

