import * as grpc from '@grpc/grpc-js';
import * as path from 'path';
import * as fs from 'fs';
import * as logger from '../utils/logger';
import * as pb from '../proto/edgeagent_pb';

// Define interfaces for our data types
export interface DeviceUser {
  email: string;
  sessionId: string;
}

export interface BiometricAuthResponse {
  verificationURL: string;
}

export interface IsAuthorisedResponse {
  status: boolean;
}

export class EdgeAgentService {
  private client: any;
  private host: string;
  private port: number;
  private mockMode: boolean = false;
  private callTimeoutMs: number = 7000;

  constructor(host: string = 'localhost', port: number = 4040) {
    // Allow overriding host/port via env
    if (process && process.env) {
      if (process.env.EDGEAGENT_HOST) host = process.env.EDGEAGENT_HOST;
      if (process.env.EDGEAGENT_PORT) port = parseInt(process.env.EDGEAGENT_PORT, 10) || port;
      if (process.env.EDGEAGENT_MOCK === 'true') this.mockMode = true;
      if (process.env.EDGEAGENT_CALL_TIMEOUT_MS) this.callTimeoutMs = parseInt(process.env.EDGEAGENT_CALL_TIMEOUT_MS, 10) || this.callTimeoutMs;
    }

    this.host = host;
    this.port = port;
    logger.info(`EdgeAgentService: constructor - host=${this.host} port=${this.port}`);

    if (this.mockMode) {
      logger.info('EdgeAgentService: running in MOCK mode');
      this.client = null;
    } else {
      this.initializeClient();
    }
  }

  private initializeClient(): void {
    try {
      const genDir = path.join(__dirname, '../proto');
      const genServicePath = path.join(genDir, 'edgeagent_grpc_pb.js');

      if (!fs.existsSync(genServicePath)) {
        throw new Error(`Generated stubs not found at ${genServicePath}. Run 'npm run proto:generate' first.`);
      }

      logger.info(`EdgeAgentService: loading generated stubs from ${genServicePath}`);
      const serviceModule = require(genServicePath);
      const ClientCtor = serviceModule.ScuridEdgeAgentAPIClient;

      if (!ClientCtor) {
        throw new Error('ScuridEdgeAgentAPIClient not found in generated stubs');
      }

      this.client = new ClientCtor(`${this.host}:${this.port}`, grpc.credentials.createInsecure());
      logger.info('EdgeAgentService: gRPC client initialized');
    } catch (err) {
      logger.error(`EdgeAgentService: failed to initialize gRPC client: ${String(err)}`);
      this.client = null;
    }
  }

  /**
   * Get list of device users enrolled with biometric authentication
   */
  async getDeviceUsers(): Promise<DeviceUser[]> {
    return new Promise((resolve, reject) => {
      logger.info('EdgeAgentService: getDeviceUsers - calling GetDeviceUsers');
          if (this.mockMode) {
            // Return a small mocked user list for local testing
            logger.info('EdgeAgentService: mock mode -> returning fake users');
            resolve([{ email: 'test@scurid.com', sessionId: 'mock-session-1234' }]);
            return;
          }

          if (!this.client) {
            const err = new Error('gRPC client not initialized');
            logger.error('EdgeAgentService: client not initialized when calling GetDeviceUsers');
            reject(err);
            return;
          }

          let timedOut = false;
          const timer = setTimeout(() => {
            timedOut = true;
            const e = new Error('GetDeviceUsers call timed out');
            logger.error('EdgeAgentService: GetDeviceUsers timed out');
            reject(e);
          }, this.callTimeoutMs);

      const request = new pb.GetDeviceUsersReq();
      this.client.getDeviceUsers(request, (err: grpc.ServiceError | null, response: any) => {
        if (timedOut) return;
        clearTimeout(timer);

        if (err) {
          logger.error(`EdgeAgentService: GetDeviceUsers error: ${String(err)}`);
          // Handle specific gRPC errors that indicate no users (not connection errors)
          if (err.code === grpc.status.UNKNOWN &&
              err.message?.includes('agentDeviceUsers is empty')) {
            logger.info('EdgeAgentService: GetDeviceUsers -> empty result (mapped)');
            resolve([]);
            return;
          }
          // Handle "no active device" as empty user list
          if (err.code === grpc.status.INTERNAL &&
              err.message?.includes('agent has no active device')) {
            logger.info('EdgeAgentService: GetDeviceUsers -> no active device, returning empty list');
            resolve([]);
            return;
          }
          reject(err);
          return;
        }

        const users: DeviceUser[] = (response.getDeviceusersList() || []).map((user: any) => ({
          email: user.getEmail(),
          sessionId: user.getSessionid(),
        }));

        logger.info(`EdgeAgentService: GetDeviceUsers -> returning ${users.length} users`);

        resolve(users);
      });
    });
  }

  /**
   * Initiate biometric authentication for a user
   * @param sessionId - The session ID of the user
   * @returns The verification URL for biometric authentication
   */
  async biometricAuth(sessionId: string): Promise<string> {
    return new Promise((resolve, reject) => {
      logger.info(`EdgeAgentService: biometricAuth -> sessionId=${sessionId}`);
      if (this.mockMode) {
        logger.info('EdgeAgentService: mock mode -> biometricAuth returning mock URL');
        resolve('https://example.com/mock-verification');
        return;
      }

      if (!this.client) {
        const e = new Error('gRPC client not initialized');
        logger.error('EdgeAgentService: client not initialized when calling BiometricAuth');
        reject(e);
        return;
      }

      const request = new pb.BiometricAuthReq();
      request.setId(sessionId);

      let timedOut = false;
      const timer = setTimeout(() => {
        timedOut = true;
        const e = new Error('BiometricAuth call timed out');
        logger.error('EdgeAgentService: BiometricAuth timed out');
        reject(e);
      }, this.callTimeoutMs);

      this.client.biometricAuth(request, (err: grpc.ServiceError | null, response: any) => {
        if (timedOut) return;
        clearTimeout(timer);

        if (err) {
          logger.error(`EdgeAgentService: BiometricAuth error: ${String(err)}`);
          reject(err);
          return;
        }

        logger.info('EdgeAgentService: BiometricAuth -> received verificationURL');
        resolve(response.getVerificationurl());
      });
    });
  }

  /**
   * Check if user is authorized after biometric authentication
   * @param sessionId - The session ID of the user
   * @returns True if authorized, false otherwise
   */
  async isAuthorised(sessionId: string): Promise<boolean> {
    return new Promise((resolve, reject) => {
      logger.info(`EdgeAgentService: isAuthorised -> sessionId=${sessionId}`);
      if (this.mockMode) {
        logger.info('EdgeAgentService: mock mode -> isAuthorised returning true');
        resolve(true);
        return;
      }

      if (!this.client) {
        const e = new Error('gRPC client not initialized');
        logger.error('EdgeAgentService: client not initialized when calling IsAuthorised');
        reject(e);
        return;
      }

      const request = new pb.IsAuthorisedReq();
      request.setSessionid(sessionId);

      let timedOut = false;
      const timer = setTimeout(() => {
        timedOut = true;
        const e = new Error('IsAuthorised call timed out');
        logger.error('EdgeAgentService: IsAuthorised timed out');
        reject(e);
      }, this.callTimeoutMs);

      this.client.isAuthorised(request, (err: grpc.ServiceError | null, response: any) => {
        if (timedOut) return;
        clearTimeout(timer);

        if (err) {
          logger.error(`EdgeAgentService: IsAuthorised error: ${String(err)}`);
          reject(err);
          return;
        }

        logger.info(`EdgeAgentService: IsAuthorised -> status=${Boolean(response.getStatus())}`);
        resolve(response.getStatus() || false);
      });
    });
  }

  /**
   * Close the gRPC connection
   */
  close(): void {
    if (this.client) {
      logger.info('EdgeAgentService: closing gRPC client');
      grpc.closeClient(this.client);
    }
  }
}

/**
 * Parse gRPC error into user-friendly message
 */
export function parseGrpcError(error: any): string {
  const errorString = error.toString();

  logger.debug(`EdgeAgentService: parseGrpcError -> ${errorString}`);

  // Resolve configured host/port (fall back to localhost:4040)
  const host = (process && process.env && process.env.EDGEAGENT_HOST) ? process.env.EDGEAGENT_HOST : 'localhost';
  const port = (process && process.env && process.env.EDGEAGENT_PORT) ? process.env.EDGEAGENT_PORT : '4040';

  // Check for gRPC UNAVAILABLE error
  if (error.code === grpc.status.UNAVAILABLE ||
      errorString.includes('UNAVAILABLE') ||
      errorString.includes('Connection refused')) {
    return `Unable to connect to Scurid Edge Agent.\n\nPlease ensure the edge agent is running on ${host}:${port}`;
  }

  // Check for gRPC UNKNOWN error
  if (error.code === grpc.status.UNKNOWN || errorString.includes('UNKNOWN')) {
    return 'Edge agent returned an error.\n\nPlease check the edge agent logs for details.';
  }

  // Check for gRPC UNAUTHENTICATED error
  if (error.code === grpc.status.UNAUTHENTICATED || errorString.includes('UNAUTHENTICATED')) {
    return 'Authentication failed.\n\nPlease check your credentials.';
  }

  // Check for gRPC PERMISSION_DENIED error
  if (error.code === grpc.status.PERMISSION_DENIED || errorString.includes('PERMISSION_DENIED')) {
    return 'Access denied.\n\nYou do not have permission to access this resource.';
  }

  // Check for gRPC DEADLINE_EXCEEDED error
  if (error.code === grpc.status.DEADLINE_EXCEEDED || errorString.includes('DEADLINE_EXCEEDED')) {
    return 'Request timed out.\n\nThe edge agent took too long to respond.';
  }

  // Default error message
  return 'An unexpected error occurred.\n\nPlease try again later.';
}
