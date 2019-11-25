FROM alpine

RUN apk update && apk add --no-cache \
		bash \
    vim \
    # networking
    curl \
    net-tools \
    nmap \
    socat \
    tcpdump \
    tshark \
    # system
    lsof \
    ltrace \
    strace

ENTRYPOINT /bin/bash
