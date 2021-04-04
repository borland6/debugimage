#####
FROM ubuntu:18.04
MAINTAINER borland6@gmail.com

RUN apt-get update && \
	apt-get install -y net-tools \
	tcpdump \
  vim \
	iperf3 \
	iftop \
	ethtool \
	netcat \
  iputils-ping \
  wget \
  curl \
  iproute2 \
  redis-tools \
  dnsutils \
  telnet \
  git \
  lynx \
  inetutils-ping \
  tmux \
   
COPY begin.sh ./
ENTRYPOINT ["/bin/bash", "./begin.sh"]
