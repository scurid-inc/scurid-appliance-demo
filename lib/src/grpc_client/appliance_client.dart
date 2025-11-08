import 'dart:developer';

import 'package:grpc/grpc.dart';
import 'package:scuridappliancedemo/utils/grpc_utils.dart';

/// Mock gRPC client for demonstration purposes
/// This will be replaced with actual generated gRPC clients from proto files
class ApplianceGrpcClient {
  ClientChannel? _channel;
  String? _authToken;

  /// Initialize the gRPC client
  Future<void> initialize({
    GrpcConfig? config,
    String? caCertPem,
  }) async {
    try {
      _channel = await createGrpcChannel(
        config: config,
        caCertPem: caCertPem,
      );
      log('gRPC client initialized successfully');
    } catch (e) {
      log('Failed to initialize gRPC client', error: e);
      rethrow;
    }
  }

  /// Set authentication token
  void setAuthToken(String token) {
    _authToken = token;
  }

  /// Get the channel
  ClientChannel get channel {
    if (_channel == null) {
      throw StateError('gRPC client not initialized. Call initialize() first.');
    }
    return _channel!;
  }

  /// Get call options with auth token
  Future<CallOptions> getCallOptions({Duration? timeout}) async {
    return createCallOptions(
      authToken: _authToken,
      timeout: timeout,
    );
  }

  /// Dispose the client
  Future<void> dispose() async {
    await _channel?.shutdown();
    _channel = null;
    _authToken = null;
    log('gRPC client disposed');
  }

  // Mock API methods - these will be replaced with actual generated methods

  /// Mock: Get user list
  Future<List<MockUser>> getUsers() async {
    // Simulate API call
    await Future.delayed(const Duration(milliseconds: 500));
    
    // Return mock data
    return [
      MockUser(id: '1', name: 'John Smith', email: 'john@example.com'),
      MockUser(id: '2', name: 'Sarah Johnson', email: 'sarah@example.com'),
    ];
  }

  /// Mock: Get device info
  Future<MockDevice> getDevice(String deviceId) async {
    // Simulate API call
    await Future.delayed(const Duration(milliseconds: 300));
    
    return MockDevice(
      id: deviceId,
      name: 'Test Device',
      status: 'online',
    );
  }

  /// Mock: Update device status
  Future<bool> updateDeviceStatus(String deviceId, String status) async {
    // Simulate API call
    await Future.delayed(const Duration(milliseconds: 400));
    
    log('Updated device $deviceId status to $status');
    return true;
  }
}

/// Mock user model - will be replaced with generated proto classes
class MockUser {
  final String id;
  final String name;
  final String email;

  MockUser({
    required this.id,
    required this.name,
    required this.email,
  });
}

/// Mock device model - will be replaced with generated proto classes
class MockDevice {
  final String id;
  final String name;
  final String status;

  MockDevice({
    required this.id,
    required this.name,
    required this.status,
  });
}
