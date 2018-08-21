#!/usr/bin/env bash

docker pull docker.io/debian:stretch-slim
docker build -t debian:stretch-slim debian
docker tag debian:stretch-slim debian:latest
docker tag debian:stretch-slim debian:latest

docker pull docker.io/centos:7
docker build -t centos:7 centos
docker tag centos:7 centos:latest

DANGLING=$(docker images -q -f dangling=true)
[ -n "$DANGLING" ] && docker rmi $DANGLING
