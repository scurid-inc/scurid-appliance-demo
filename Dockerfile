# Dockerfile for building Scurid Appliance Electron app
FROM node:18-bullseye

# Install system dependencies required for Electron building
RUN apt-get update && apt-get install -y \
    build-essential \
    git \
    curl \
    wget \
    libgtk-3-0 \
    libnotify4 \
    libnss3 \
    libxss1 \
    libxtst6 \
    xdg-utils \
    libatspi2.0-0 \
    libdrm2 \
    libgbm1 \
    libxcb-dri3-0 \
    libasound2 \
    libx11-xcb1 \
    libxcomposite1 \
    libxcursor1 \
    libxdamage1 \
    libxi6 \
    libxrandr2 \
    libxrender1 \
    libxshmfence1 \
    libxfixes3 \
    libgl1 \
    rpm \
    fakeroot \
    dpkg \
    && rm -rf /var/lib/apt/lists/*

# Set working directory
WORKDIR /app

# Copy package files
COPY package*.json ./

# Install Node.js dependencies
RUN npm ci

# Copy the rest of the application
COPY . .

# Set environment variables for Electron
ENV ELECTRON_DISABLE_SANDBOX=1
ENV DISPLAY=:99

# Build the application
RUN npm run build

# Default command - build distributable packages
CMD ["npm", "run", "dist"]
