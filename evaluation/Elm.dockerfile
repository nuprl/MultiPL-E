FROM ubuntu:22.04
ARG DEBIAN_FRONTEND=noninteractive
ENV TZ=Etc/UTC

RUN apt-get update -yqq && apt-get install -yqq python3-tqdm curl

# Node.js (required for Elm)
RUN curl -fsSL https://deb.nodesource.com/setup_current.x | bash - && \
    apt-get install -y nodejs

# Elm
RUN npm install -g elm
WORKDIR /etc/elm
RUN echo y | elm init > /dev/null
RUN printf 'module Main exposing (..)\nimport Html\nmain = Html.text ""\n' > src/Main.elm
RUN elm make src/Main.elm --output=/dev/null

COPY src /code
WORKDIR /code
ENTRYPOINT ["python3", "main.py"]
