# Elixir language image layered on the common base.

ARG BASE_IMAGE=multipl-e-evaluation-base:latest
FROM ${BASE_IMAGE}

ARG DEBIAN_FRONTEND=noninteractive

# Install Erlang (minimal) and Elixir prebuilt archive
RUN mkdir -p /erlang \
 && cd /erlang \
 && wget -nv -O erlang.tar.gz https://builds.hex.pm/builds/otp/ubuntu-22.04/OTP-27.0.tar.gz \
 && tar xzf erlang.tar.gz --strip-components=1 \
 && ./Install -minimal "$(pwd)" \
 && rm -f erlang.tar.gz

RUN mkdir -p /elixir \
 && cd /elixir \
 && wget -nv -O elixir.zip https://builds.hex.pm/builds/elixir/v1.17.2-otp-27.zip \
 && unzip -q elixir.zip \
 && rm -f elixir.zip

ENV PATH="/erlang/bin:/elixir/bin:${PATH}"
ENV LANG=C.UTF-8

# Sanity check
RUN erl -noshell -eval 'erlang:halt().' \
 && elixir --version

# Base image already sets the Lambda entrypoint and copies /var/task.

