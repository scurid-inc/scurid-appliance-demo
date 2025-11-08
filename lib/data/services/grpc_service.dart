import 'package:scuridappliancedemo/data/repositories/device_repository.dart';
import 'package:scuridappliancedemo/data/repositories/user_repository.dart';
import 'package:scuridappliancedemo/src/grpc_client/appliance_client.dart';
import 'package:scuridappliancedemo/utils/grpc_utils.dart';

/// Service to initialize all gRPC clients and repositories
class GrpcService {
  late ApplianceGrpcClient _grpcClient;
  late UserRepository _userRepository;
  late DeviceRepository _deviceRepository;

  bool _initialized = false;

  /// Check if service is initialized
  bool get isInitialized => _initialized;

  /// Get the gRPC client
  ApplianceGrpcClient get grpcClient => _grpcClient;

  /// Get user repository
  UserRepository get userRepository => _userRepository;

  /// Get device repository
  DeviceRepository get deviceRepository => _deviceRepository;

  /// Initialize all gRPC clients and repositories
  Future<void> initialize({
    GrpcConfig? config,
    String? caCertPem,
  }) async {
    if (_initialized) {
      return;
    }

    // Initialize gRPC client
    _grpcClient = ApplianceGrpcClient();
    await _grpcClient.initialize(
      config: config,
      caCertPem: caCertPem,
    );

    // Initialize repositories
    _userRepository = UserRepository(_grpcClient);
    _deviceRepository = DeviceRepository(_grpcClient);

    _initialized = true;
  }

  /// Set authentication token for all API calls
  void setAuthToken(String token) {
    _grpcClient.setAuthToken(token);
  }

  /// Dispose all clients
  Future<void> dispose() async {
    await _grpcClient.dispose();
    _initialized = false;
  }
}

/// Global gRPC service instance
final grpcService = GrpcService();
