FROM ubuntu:22.04
ARG DEBIAN_FRONTEND=noninteractive
ENV TZ=Etc/UTC

RUN apt-get update -yqq && apt-get install -yqq python3-tqdm python3-pip
RUN python3 -m pip install hy

COPY src /code
WORKDIR /code
ENTRYPOINT ["python3", "main.py"]
