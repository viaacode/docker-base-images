FROM docker.io/centos:7
RUN echo "proxy=http://proxy:80" >>/etc/yum.conf

ENV TZ=Europe/Brussels
RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone

