import * as fs from 'fs';
import * as path from 'path';

let logFilePath: string | null = null;

// Try to determine if we're running in Electron main process and get userData
try {
  // eslint-disable-next-line @typescript-eslint/no-var-requires
  const electron = require('electron');
  if (electron && electron.app && typeof electron.app.getPath === 'function') {
    const userData = electron.app.getPath('userData');
    logFilePath = path.join(userData, 'scurid.log');
  }
} catch (e) {
  // Not running in Electron main process or require unavailable.
  logFilePath = null;
}

function writeLine(level: string, message: string) {
  const line = `${new Date().toISOString()} [${level}] ${message}`;
  // Always log to console
  if (level === 'ERROR') console.error(line);
  else if (level === 'WARN') console.warn(line);
  else console.log(line);

  // Also append to a log file when available
  if (logFilePath) {
    try {
      fs.appendFileSync(logFilePath, line + '\n');
    } catch (e) {
      // ignore file write errors
    }
  }
}

export function info(msg: string) { writeLine('INFO', msg); }
export function warn(msg: string) { writeLine('WARN', msg); }
export function error(msg: string) { writeLine('ERROR', msg); }
export function debug(msg: string) { writeLine('DEBUG', msg); }

export default { info, warn, error, debug };
