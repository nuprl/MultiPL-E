# Dafny language image layered on the common base.

ARG BASE_IMAGE=multipl-e-evaluation-base:latest
FROM ${BASE_IMAGE}

ARG DEBIAN_FRONTEND=noninteractive

# Install ICU required by Dafny (.NET runtime dependency)
RUN apt-get update -yqq \
 && apt-get install -yqq --no-install-recommends libicu70 \
 && rm -rf /var/lib/apt/lists/*

# Install .NET SDK (6.0) required for Dafny C# compilation and execution
RUN wget -q https://packages.microsoft.com/config/ubuntu/22.04/packages-microsoft-prod.deb -O /tmp/packages-microsoft-prod.deb \
 && dpkg -i /tmp/packages-microsoft-prod.deb \
 && rm -f /tmp/packages-microsoft-prod.deb \
 && apt-get update -yqq \
 && apt-get install -yqq --no-install-recommends dotnet-sdk-6.0 dotnet-runtime-6.0 dotnet-hostfxr-6.0 \
 && rm -rf /var/lib/apt/lists/*

# Configure DOTNET_ROOT and PATH to match apt install location
ENV DOTNET_ROOT=/usr/lib/dotnet
ENV PATH="${PATH}:/usr/lib/dotnet"
# Some tools expect dotnet under /usr/share/dotnet; provide a symlink
RUN rm -rf /usr/share/dotnet && ln -s /usr/lib/dotnet /usr/share/dotnet

# Install Dafny 4.3.0 under /opt to be usable by non-root
RUN mkdir -p /opt/dafny \
 && wget -q https://github.com/dafny-lang/dafny/releases/download/v4.3.0/dafny-4.3.0-x64-ubuntu-20.04.zip -O /tmp/dafny.zip \
 && unzip -q /tmp/dafny.zip -d /opt/dafny/ \
 && ln -sf /opt/dafny/dafny/dafny /usr/local/bin/dafny \
 && chmod +x /opt/dafny/dafny/dafny \
 && rm -f /tmp/dafny.zip

# Sanity check
RUN dafny --version

# .NET single-file apps may extract to a bundle dir; force it to /tmp for Lambda
ENV DOTNET_BUNDLE_EXTRACT_BASE_DIR=/tmp
ENV DOTNET_CLI_HOME=/tmp

# Base image already sets the Lambda entrypoint and copies /var/task.
