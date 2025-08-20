# Base image for language-specific Lambda containers.
# This image provides:
#   - Common system utilities and runtime libs needed by multiple languages
#   - Python runtime with FastAPI + Mangum + AWS Lambda RIC
#   - Sensible defaults for non-interactive builds and UTF-8 locale
#   - Lambda-friendly environment defaults (HOME=/tmp)
#
# Language toolchains (Go/Swift/Julia/etc.) should be added in child images.
# Keep this image stable and predictable to avoid test flakiness.

FROM ubuntu:22.04

ARG DEBIAN_FRONTEND=noninteractive
ENV TZ=Etc/UTC

# -----------------------------------------------------------------------------
# Base OS packages and common runtime libraries
# -----------------------------------------------------------------------------
# Notes:
# - We intentionally include a superset of common libs used by various runtimes
#   (e.g., libgmp, libssl, zlib, ODBC). This reduces surprises when adding
#   language toolchains in child images.
# - We keep manpages/docs for now (size is not a concern for the base in a split setup).
RUN apt-get update -yqq && apt-get install -yqq --no-install-recommends \
    # Core build and diagnostic tools
    build-essential \
    curl wget ca-certificates gnupg git unzip xz-utils jq pkg-config \
    # Useful sandbox/runtime helpers
    bubblewrap \
    # Common runtime libs used by multiple ecosystems
    libgmp10 libodbc1 libssl3 zlib1g libsctp1 \
    # Python 3 (base runtime for the API handler)
    python3 python3-pip python3-venv python3-tqdm \
    # Locales if you need predictable UTF-8 behavior across tools
    locales \
 && rm -rf /var/lib/apt/lists/*

# Ensure a predictable UTF-8 locale for tools that read LANG/LC_ALL.
# (C.UTF-8 exists by default on Ubuntu 22.04; also generate en_US.UTF-8 just in case.)
RUN localedef -i en_US -f UTF-8 en_US.UTF-8 || true
ENV LANG=C.UTF-8
ENV LC_ALL=C.UTF-8

# -----------------------------------------------------------------------------
# Python dependencies for the Lambda HTTP handler (FastAPI + Mangum + RIC)
# -----------------------------------------------------------------------------
# We install these in the base so all language images get the same API surface.
RUN python3 -m pip install --no-cache-dir \
      numpy \
      fastapi \
      "uvicorn[standard]" \
      awslambdaric \
      mangum

# -----------------------------------------------------------------------------
# Lambda-friendly defaults
# -----------------------------------------------------------------------------
# Many compilers and tools want a writable HOME; Lambda provides /tmp for that.
ENV HOME=/tmp

# Create common directories some toolchains/tests expect to exist.
RUN mkdir -p /tmp && chmod 1777 /tmp

# -----------------------------------------------------------------------------
# Working directory (child images will COPY their /var/task/src here)
# -----------------------------------------------------------------------------
WORKDIR /var/task
COPY src/ /var/task/

# -----------------------------------------------------------------------------
# Default entrypoint/cmd for Lambda (child images can override if needed)
# -----------------------------------------------------------------------------
ENTRYPOINT ["python3", "-m", "awslambdaric"]
CMD ["api.handler"]
