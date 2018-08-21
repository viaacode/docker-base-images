FROM docker.io/debian:stretch-slim

COPY sources.list /etc/apt/sources.list
COPY 50proxy      /etc/apt/apt.conf.d/

RUN apt-get update && apt-get install -y locales && rm -rf /var/lib/apt/lists/* 

ENV TZ=Europe/Brussels
RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ >/etc/timezone

RUN localedef -i nl_BE -c -f UTF-8 -A /usr/share/locale/locale.alias nl_BE.UTF-8


