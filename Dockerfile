FROM debian:latest

LABEL maintainer="barbaricornu@outlook.com"
LABEL description="A debian container image with networking tools installed for testing and diagnostics."

RUN apt-get update && apt-get install -y \
    # --- Base system tools ---
    apt-utils \
    lsb-release \
    software-properties-common \
    apt-transport-https \
    ca-certificates \
    gnupg-agent \
    curl \
    wget \
    vim \
    bash-completion \
    jq \
    strace \
    ethtool \
    git \
    # --- Python environment ---
    python3 \
    python3-pip \
    python3-venv \
    # --- Networking & diagnostics ---
    iputils-ping \
    iputils-tracepath \
    arp-scan \
    iproute2 \
    net-tools \
    dnsutils \
    mtr \
    nmap \
    tcpdump \
    iperf3 \
    iftop \
    htop \
    whois \
    telnet \
    socat \
    netcat-openbsd \
    tcpflow \
    tshark \
    aircrack-ng \
    # --- Build essentials ---
    build-essential \
    && rm -rf /var/lib/apt/lists/*

WORKDIR /root

CMD ["/bin/bash"]