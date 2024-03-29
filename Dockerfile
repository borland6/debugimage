#####
FROM ubuntu:18.04
MAINTAINER borland6@gmail.com

RUN apt-get update && \
        export DEBIAN_FRONTEND=noninteractive && \ 
	apt-get install -y net-tools \
	tcpdump \
        vim \
	iperf3 \
	iftop \
	ethtool \
	netcat \
        iputils-ping \
        wget \
	ldap-utils \
        curl \
        iproute2 \
        redis-tools \
        dnsutils \
        telnet \
        git \
        lynx \
        tmux \
        tzdata
   
COPY begin.sh ./
ENTRYPOINT ["/bin/bash", "./begin.sh"]
