import { app, BrowserWindow, screen, Event } from 'electron';
import * as path from 'path';
import * as fs from 'fs';
import * as logger from './utils/logger';

let mainWindow: BrowserWindow | null = null;
let isQuitting = false;

logger.info('Main process starting');

function createWindow(): void {
  logger.info('Creating BrowserWindow');
  // Get primary display dimensions
  const primaryDisplay = screen.getPrimaryDisplay();
  const { width, height } = primaryDisplay.workAreaSize;

  // Create the browser window in full-screen kiosk mode
  mainWindow = new BrowserWindow({
    width,
    height,
    fullscreen: true,
    kiosk: true,
    frame: false,
    webPreferences: {
      nodeIntegration: true,
      contextIsolation: false,
      webviewTag: true, // Enable webview tag for Linux
    },
  });

  function resolvePage(fileName: string): string {
    const candidates = [
      path.join(__dirname, 'pages', fileName), // when running from `dist` (dist/pages)
      path.join(__dirname, '..', 'pages', fileName), // when compiled and pages placed at project_root/pages
      path.join(__dirname, '..', 'src', 'pages', fileName), // when running from project root and referencing src
      path.join(__dirname, '..', '..', 'pages', fileName),
      path.join(__dirname, '..', '..', 'src', 'pages', fileName),
    ];

    for (const c of candidates) {
      try {
        if (fs.existsSync(c)) return c;
      } catch (e) {
        // ignore and try next
      }
    }

    return path.join(__dirname, '..', 'pages', fileName);
  }

  const pagePath = resolvePage('index.html');
  logger.info(`Loading page: ${pagePath}`);
  mainWindow.loadFile(pagePath).catch((err) => {
    logger.error(`Failed to load page ${pagePath}: ${String(err)}`);
  });

  // Open DevTools in development
  if (process.env.NODE_ENV === 'development') {
    mainWindow.webContents.openDevTools();
  }

  // Forward renderer console messages to main logger so we can see renderer logs
  mainWindow.webContents.on('console-message', (event, level, message, line, sourceId) => {
    logger.info(`Renderer console (level=${level}) ${sourceId}:${line} - ${message}`);
  });

  // Log any failed load events
  mainWindow.webContents.on('did-fail-load', (event, errorCode, errorDescription, validatedURL, isMainFrame) => {
    logger.error(`did-fail-load: code=${errorCode} desc=${errorDescription} url=${validatedURL} mainFrame=${isMainFrame}`);
  });

  // Capture renderer process crashes
  mainWindow.webContents.on('render-process-gone', (event, details) => {
    logger.error(`Renderer process gone: reason=${details.reason} exitCode=${details.exitCode}`);
  });

  // Prevent window from being closed/minimized (kiosk mode enforcement)
  mainWindow.on('minimize', (event: Event) => {
    logger.info('Window minimize prevented');
    event.preventDefault();
    mainWindow?.setFullScreen(true);
  });

  mainWindow.on('restore', () => {
    logger.info('Window restore - enforcing fullscreen');
    mainWindow?.setFullScreen(true);
  });

  mainWindow.on('closed', () => {
    logger.info('Window closed');
    mainWindow = null;
  });

  // Enforce full-screen on focus
  mainWindow.on('focus', () => {
    logger.info('Window focused - enforcing fullscreen');
    mainWindow?.setFullScreen(true);
  });
}

// This method will be called when Electron has finished initialization
app.whenReady().then(() => {
  logger.info('App ready');
  createWindow();

  app.on('activate', () => {
    logger.info('App activate event');
    // On macOS, re-create window when dock icon is clicked and no windows are open
    if (BrowserWindow.getAllWindows().length === 0) {
      createWindow();
    }
  });
});

// Quit when all windows are closed, except on macOS
app.on('window-all-closed', () => {
  logger.info('window-all-closed event');
  if (process.platform !== 'darwin') {
    logger.info('Quitting app (not macOS)');
    app.quit();
  }
});

// Prevent app from quitting (kiosk mode)
app.on('before-quit', (event) => {
  logger.info('before-quit event');
  // Allow quit only if explicitly requested. Use local flag to avoid
  // augmenting Electron's App type.
  if (!isQuitting) {
    logger.info('Preventing quit - isQuitting is false');
    event.preventDefault();
  }
});

// Export helper to allow other modules to request quitting explicitly.
export function requestQuit(): void {
  logger.info('requestQuit called - will quit app');
  isQuitting = true;
  app.quit();
}
