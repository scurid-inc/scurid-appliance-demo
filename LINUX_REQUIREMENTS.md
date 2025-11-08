# Linux System Requirements for Scurid Appliance Demo

## Overview

The `flutter_linux_webview` plugin is powered by **CEF (Chromium Embedded Framework)**, which means you'll need several system libraries and dependencies installed on your barebones Linux x86 environment.

## Required System Packages

### Essential Build Tools
```bash
sudo apt-get update
sudo apt-get install -y \
    cmake \
    ninja-build \
    pkg-config \
    clang
```

### GTK+ 3.0 and Dependencies
The app requires GTK+ 3.0 as specified in the CMakeLists.txt:
```bash
sudo apt-get install -y \
    libgtk-3-dev \
    libgtk-3-0
```

### X11 Libraries (for windowing)
```bash
sudo apt-get install -y \
    libx11-dev \
    libxcursor-dev \
    libxinerama-dev \
    libxrandr-dev \
    libxi-dev \
    libxext-dev
```

### Additional Graphics Libraries
```bash
sudo apt-get install -y \
    libgl1-mesa-dev \
    libglu1-mesa-dev \
    libegl1-mesa-dev
```

### Required for CEF (Chromium Embedded Framework)
```bash
sudo apt-get install -y \
    libnss3 \
    libnss3-dev \
    libnspr4 \
    libnspr4-dev \
    libatk1.0-0 \
    libatk-bridge2.0-0 \
    libcups2 \
    libdrm2 \
    libxcomposite1 \
    libxdamage1 \
    libxfixes3 \
    libxkbcommon0 \
    libgbm1 \
    libasound2 \
    libpango-1.0-0 \
    libcairo2
```

### Fonts (recommended for proper text rendering)
```bash
sudo apt-get install -y \
    fonts-liberation \
    fonts-liberation2
```

## Complete Installation Script

For your barebones x86 Linux environment, here's a complete installation script:

```bash
#!/bin/bash

# Update package lists
sudo apt-get update

# Install all required packages in one go
sudo apt-get install -y \
    cmake \
    ninja-build \
    pkg-config \
    clang \
    libgtk-3-dev \
    libgtk-3-0 \
    libx11-dev \
    libxcursor-dev \
    libxinerama-dev \
    libxrandr-dev \
    libxi-dev \
    libxext-dev \
    libgl1-mesa-dev \
    libglu1-mesa-dev \
    libegl1-mesa-dev \
    libnss3 \
    libnss3-dev \
    libnspr4 \
    libnspr4-dev \
    libatk1.0-0 \
    libatk-bridge2.0-0 \
    libcups2 \
    libdrm2 \
    libxcomposite1 \
    libxdamage1 \
    libxfixes3 \
    libxkbcommon0 \
    libgbm1 \
    libasound2 \
    libpango-1.0-0 \
    libcairo2 \
    fonts-liberation \
    fonts-liberation2

echo "All dependencies installed successfully!"
```

## Runtime Requirements

When deploying the built application, you'll need to ensure these runtime libraries are present:

### Minimal Runtime Libraries
- GTK+ 3.0
- X11 libraries
- NSS and NSPR (for Chromium)
- Graphics libraries (GL, EGL)
- Audio libraries (ALSA)

### Bundle Size Considerations

The CEF-based webview will add significant size to your application bundle:
- CEF binaries: ~100-200 MB
- Flutter engine: ~10-20 MB
- Your app code: varies

## Building for Linux

Once dependencies are installed:

```bash
# Build release version
flutter build linux --release

# The output will be in:
# build/linux/x64/release/bundle/
```

## Deployment

To deploy on your barebones Linux system:

1. Copy the entire `build/linux/x64/release/bundle/` directory to your target system
2. Ensure all runtime libraries listed above are installed
3. Run: `./scuridappliancedemo`

## Verification

To verify all dependencies are met, you can use:

```bash
# Check GTK version
pkg-config --modversion gtk+-3.0

# List missing dependencies for your binary
ldd build/linux/x64/release/bundle/scuridappliancedemo | grep "not found"
```

## Notes for Barebones Systems

Since you mentioned a "super barebones" environment:

1. **Display Server**: You'll need X11 or Wayland running
2. **Desktop Environment**: Not required, but minimal window manager recommended
3. **System Resources**: CEF requires reasonable RAM (minimum 512MB, recommended 1GB+)
4. **CPU**: x86_64 architecture required for CEF

## Alternative: Headless Mode

If you need truly minimal deployment, consider:
- Using `flutter_inappwebview` with a lighter backend
- Or investigating headless Chromium options
- Note: This would require code changes to your webview implementation
