ARG VERSION=latest
FROM ghcr.io/gardenlinux/nightly:$VERSION

RUN apt-get update && \
    DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends \
    bridge-utils \
    conntrack \
    curl \
    dnsutils \
    ethtool \
    fio \
    iperf \
    iperf3 \
    iproute2 \
    iptraf-ng \
    iputils-ping \
    mtr-tiny \
    net-tools \
    netcat-openbsd \
    openssh-client \
    smartmontools \
    snmp \
    socat \
    sysstat \
    tcpdump \
    traceroute \
    && rm -rf /var/lib/apt/lists/*
