FROM ubuntu:22.04

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
    build-essential

# Install Flutter
RUN git clone https://github.com/flutter/flutter.git /flutter
ENV PATH="/flutter/bin:$PATH"

# Enable Flutter desktop support
RUN flutter config --enable-linux-desktop

# Pre-download Flutter dependencies
RUN flutter precache

# Set working directory
WORKDIR /app

# Set entrypoint
ENTRYPOINT ["/bin/bash"]