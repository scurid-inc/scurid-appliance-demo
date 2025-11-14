FROM ubuntu:22.04

ENV DEBIAN_FRONTEND=noninteractive

# Install dependencies
RUN apt-get update && apt-get install -y \
    git \
    curl \
    wget \
    unzip \
    clang \
    cmake \
    ninja-build \
    pkg-config \
    libgtk-3-dev \
    build-essential \
    ca-certificates \
    # Needed by CEF / libcef.so
    libnss3 \
    libnspr4 \
    libasound2 \
    # Extra runtime libs commonly needed by Flutter Linux + CEF
    libx11-xcb1 \
    libxcomposite1 \
    libxdamage1 \
    libxext6 \
    libxfixes3 \
    libxrandr2 \
    libxkbcommon0 \
    libatk1.0-0 \
    libatk-bridge2.0-0 \
    libcups2 \
    libdrm2 \
 && rm -rf /var/lib/apt/lists/*

# Install Flutter
RUN git clone https://github.com/flutter/flutter.git /flutter
ENV PATH="/flutter/bin:$PATH"

# Enable Flutter desktop support
RUN flutter config --enable-linux-desktop

# Pre-download Flutter dependencies
RUN flutter precache

# Set working directory
WORKDIR /app

# Default entrypoint
ENTRYPOINT ["/bin/bash"]