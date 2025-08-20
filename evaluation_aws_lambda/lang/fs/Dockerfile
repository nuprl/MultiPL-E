# F# language image layered on the common base.

ARG BASE_IMAGE=multipl-e-evaluation-base:latest
FROM ${BASE_IMAGE}

ARG DEBIAN_FRONTEND=noninteractive

# Install Microsoft package feed and .NET SDK (includes F# and FSI)
RUN wget -q https://packages.microsoft.com/config/ubuntu/22.04/packages-microsoft-prod.deb \
    -O /tmp/packages-microsoft-prod.deb \
 && dpkg -i /tmp/packages-microsoft-prod.deb \
 && rm -f /tmp/packages-microsoft-prod.deb \
 && apt-get update -qq \
 && apt-get install -y --no-install-recommends dotnet-sdk-8.0 \
 && rm -rf /var/lib/apt/lists/*

# Sanity check: ensure dotnet and FSI are available
RUN dotnet --info \
 && printf 'printfn "ok"\n#quit;;\n' | dotnet fsi | grep -q 'ok'

# Base image already sets the Lambda entrypoint and copies /var/task.

