FROM ubuntu:xenial
MAINTAINER Martin Kemp <me@martinke.mp>
ENV DEBIAN_FRONTEND noninteractive

RUN apt-get update -q && apt-get install -qy software-properties-common
RUN add-apt-repository ppa:jonathonf/texlive-2017 -y && apt-get update -q
RUN apt-get install -qy texlive-full texlive-xetex python-pygments \
gnuplot make git && rm -rf /var/lib/apt/lists/*

WORKDIR /data
VOLUME ["/data"]
