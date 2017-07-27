FROM ubuntu:zesty
MAINTAINER Martin Kemp <me@martinke.mp>
ENV DEBIAN_FRONTEND noninteractive

RUN apt-get update -q && apt-get install -qy texlive-full python-pygments \
gnuplot make git && rm -rf /var/lib/apt/lists/*

WORKDIR /data
VOLUME ["/data"]
