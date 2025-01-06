FROM ubuntu:22.04
ARG DEBIAN_FRONTEND=noninteractive
ENV TZ=Etc/UTC

RUN apt-get update -yqq && apt-get install -yqq python3-tqdm gnat-12

COPY src /code
WORKDIR /code
ENTRYPOINT ["python3", "main.py"]
