# PHP language image layered on the common base.

ARG BASE_IMAGE=multipl-e-evaluation-base:latest
FROM ${BASE_IMAGE}

ARG DEBIAN_FRONTEND=noninteractive

# Install PHP CLI
RUN apt-get update -yqq \
 && apt-get install -yqq --no-install-recommends php-cli \
 && rm -rf /var/lib/apt/lists/*

# Sanity check
RUN php -v \
 && printf '<?php echo "ok\n"; ?>' > /tmp/p.php \
 && php /tmp/p.php | grep -q '^ok$' \
 && rm -f /tmp/p.php

# Base image already sets the Lambda entrypoint and copies /var/task.

