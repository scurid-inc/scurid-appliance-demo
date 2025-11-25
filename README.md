# Scurid Appliance Electron Demo

Electron + TypeScript demo application that mimics the Flutter scurid-appliance-demo project.

## Description

This Electron application demonstrates how to integrate and use the Scurid Appliance for secure identity and data management using gRPC APIs.

## Features

- **Electron + TypeScript**: Modern desktop application framework
- **gRPC Integration**: Uses the same EdgeAgent APIs as the Flutter app
- **WebView Support**: Linux webview integration for biometric authentication
- **Full-Screen Kiosk Mode**: Runs in full-screen mode like the Flutter version
- **Material Design UI**: Clean, modern interface

## Architecture

The app follows the same architecture as the Flutter version:

1. **Main Process** (`main.ts`): Electron main process, handles window management
2. **Renderer Process** (`renderer.ts`): UI logic and user interactions
3. **gRPC Service** (`services/edgeAgentService.ts`): Communicates with ScuridEdgeAgent
4. **Pages**:
   - Home Page: Displays device users and initiates authentication
   - Success Page: Shows Grafana dashboard after successful authentication

## Prerequisites

- Node.js (v18 or higher)
- npm or yarn
- ScuridEdgeAgent running on localhost:4040

## Installation

1. Install dependencies:
   ```bash
   npm install
   ```

2. Generate gRPC proto files:
   ```bash
   npm run proto:generate
   ```

## Running the App

Development mode:
```bash
npm run dev
```

Production mode:
```bash
npm start
```

## Building for Production

### Local Build

Build the TypeScript source:
```bash
npm run build
```

Create distributable packages (AppImage and .deb):
```bash
npm run dist
```

The built packages will be available in the `release/` directory:
- `Scurid Appliance Demo-1.0.0.AppImage` - Portable application image
- `scurid-appliance-demo_1.0.0_amd64.deb` - Debian package

### Docker Build

Build using Docker for a clean, reproducible build environment:

```bash
# Build the Docker image
docker build -t scurid-appliance-builder .

# Run the build (output will be in ./release directory)
docker run --rm -v "$(pwd)/release:/app/release" scurid-appliance-builder
```

The Docker build uses Node.js 18 on Debian Bullseye with all required Electron build dependencies pre-installed.

## gRPC APIs Used

The app uses the following EdgeAgent APIs:

- `GetDeviceUsers`: Retrieves list of enrolled device users
- `BiometricAuth`: Initiates biometric authentication flow
- `IsAuthorised`: Verifies if authentication was successful

## Project Structure

```
scurid-appliance-electron/
├── src/
│   ├── main.ts              # Electron main process
│   ├── renderer.ts          # Renderer process logic
│   ├── services/
│   │   └── edgeAgentService.ts  # gRPC service client
│   ├── proto/               # Generated gRPC files
│   └── pages/
│       ├── index.html       # Home page
│       └── success.html     # Success page
├── package.json
├── tsconfig.json
└── README.md
```

## License

MIT License
