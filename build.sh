#!/usr/bin/env bash

docker pull docker.io/debian:jessie
docker build -t debian:jessie debian
docker tag -f debian:jessie debian:latest

docker pull docker.io/centos:7
docker build -t centos:7 centos
docker tag -f centos:7 centos:latest

DANGLING=$(docker images -q -f dangling=true)
[ -n "$DANGLING" ] && docker rmi $DANGLING
