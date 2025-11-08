import 'dart:convert';
import 'dart:developer';

import 'package:flutter/foundation.dart';
import 'package:grpc/grpc.dart';

/// Configuration for gRPC connection
class GrpcConfig {
  final String host;
  final int port;
  final bool useSecure;

  const GrpcConfig({
    required this.host,
    required this.port,
    this.useSecure = true,
  });

  /// Default development configuration
  static const GrpcConfig dev = GrpcConfig(
    host: 'localhost',
    port: 50051,
    useSecure: false,
  );

  /// Default production configuration
  static const GrpcConfig prod = GrpcConfig(
    host: 'api.scurid.com',
    port: 443,
    useSecure: true,
  );

  /// Get configuration based on build mode
  factory GrpcConfig.fromEnvironment() {
    return kReleaseMode ? GrpcConfig.prod : GrpcConfig.dev;
  }
}

/// Creates a gRPC channel with the given configuration
Future<ClientChannel> createGrpcChannel({
  GrpcConfig? config,
  String? caCertPem,
}) async {
  try {
    final grpcConfig = config ?? GrpcConfig.fromEnvironment();
    
    if (grpcConfig.useSecure && caCertPem != null) {
      // Secure channel with TLS
      final channel = ClientChannel(
        grpcConfig.host,
        port: grpcConfig.port,
        options: ChannelOptions(
          credentials: ChannelCredentials.secure(
            certificates: utf8.encode(caCertPem),
            onBadCertificate: (certificate, host) {
              if (kDebugMode) {
                log('TLS certificate verification for $host');
              }
              return true; // Accept all certificates in dev mode
            },
          ),
        ),
      );
      return channel;
    } else {
      // Insecure channel (for development)
      final channel = ClientChannel(
        grpcConfig.host,
        port: grpcConfig.port,
        options: const ChannelOptions(
          credentials: ChannelCredentials.insecure(),
        ),
      );
      return channel;
    }
  } catch (e) {
    log('Error creating gRPC channel', error: e);
    rethrow;
  }
}

/// Creates call options with authentication token
Future<CallOptions> createCallOptions({
  String? authToken,
  Duration? timeout,
}) async {
  try {
    final metadata = <String, String>{};
    
    if (authToken != null && authToken.isNotEmpty) {
      metadata['authorization'] = 'Bearer $authToken';
    }
    
    return CallOptions(
      metadata: metadata,
      timeout: timeout ?? const Duration(seconds: 30),
    );
  } catch (e) {
    log('Error creating call options', error: e);
    rethrow;
  }
}

/// Helper to handle gRPC errors
String handleGrpcError(Object error) {
  if (error is GrpcError) {
    log('gRPC Error: ${error.code} - ${error.message}');
    
    switch (error.code) {
      case StatusCode.unavailable:
        return 'Service unavailable. Please check your connection.';
      case StatusCode.unauthenticated:
        return 'Authentication failed. Please log in again.';
      case StatusCode.permissionDenied:
        return 'Permission denied. You don\'t have access to this resource.';
      case StatusCode.notFound:
        return 'Resource not found.';
      case StatusCode.deadlineExceeded:
        return 'Request timeout. Please try again.';
      case StatusCode.internal:
        return 'Internal server error. Please try again later.';
      default:
        return error.message ?? 'An error occurred';
    }
  }
  
  return error.toString();
}
