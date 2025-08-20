# Go language image layered on the common base.

ARG BASE_IMAGE=multipl-e-evaluation-base:latest
FROM ${BASE_IMAGE}

ARG DEBIAN_FRONTEND=noninteractive

# Install Go toolchain from Ubuntu packages
RUN apt-get update -yqq \
 && apt-get install -yqq --no-install-recommends golang-go \
 && rm -rf /var/lib/apt/lists/*

# Lambda-friendly writable caches for Go builds/tests
ENV GOCACHE=/tmp/go-build
ENV GOPATH=/tmp/go
RUN mkdir -p /tmp/go-build /tmp/go

# Sanity check: compile and run a tiny program
RUN go version \
 && printf 'package main\nimport "fmt"\nfunc main(){ fmt.Println("ok") }' > /tmp/p.go \
 && go run /tmp/p.go | grep -q '^ok$' \
 && rm -f /tmp/p.go

# Base image already sets the Lambda entrypoint and copies /var/task.

