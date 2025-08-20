# C# language image layered on the common base.
# Uses Mono's compiler/runtime (csc + mono) as in Dockerfile~.

ARG BASE_IMAGE=multipl-e-evaluation-base:latest
FROM ${BASE_IMAGE}

ARG DEBIAN_FRONTEND=noninteractive

# Add Mono repository and install mono-devel (provides csc and mono)
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF \
 && echo "deb https://download.mono-project.com/repo/ubuntu stable-focal main" | tee /etc/apt/sources.list.d/mono-official-stable.list \
 && apt update --allow-insecure-repositories \
 && apt install -yqq --no-install-recommends mono-devel \
 && rm -rf /var/lib/apt/lists/*

# Quick sanity check: compile and run a tiny program
RUN printf 'using System; class P{ static void Main(){ Console.WriteLine("ok"); }}' > /tmp/p.cs \
 && csc /nologo /optimize /out:/tmp/p.exe /r:System.Numerics.dll /tmp/p.cs \
 && mono /tmp/p.exe | grep -q '^ok$' \
 && rm -f /tmp/p.cs /tmp/p.exe \
 && mono --version && csc /nologo /help > /dev/null || true

# Base image already sets the Lambda entrypoint and copies /var/task.

