import 'dart:developer';

import 'package:scuridappliancedemo/src/grpc_client/appliance_client.dart';
import 'package:scuridappliancedemo/utils/grpc_utils.dart';

/// Repository for user-related API calls
class UserRepository {
  final ApplianceGrpcClient _grpcClient;

  UserRepository(this._grpcClient);

  /// Get all users
  Future<List<MockUser>> getUsers() async {
    try {
      log('UserRepository: Fetching users');
      final users = await _grpcClient.getUsers();
      log('UserRepository: Fetched ${users.length} users');
      return users;
    } catch (e) {
      log('UserRepository: Error fetching users', error: e);
      final errorMessage = handleGrpcError(e);
      throw Exception(errorMessage);
    }
  }

  /// Get user by ID
  Future<MockUser?> getUserById(String userId) async {
    try {
      log('UserRepository: Fetching user $userId');
      final users = await _grpcClient.getUsers();
      return users.firstWhere(
        (user) => user.id == userId,
        orElse: () => throw Exception('User not found'),
      );
    } catch (e) {
      log('UserRepository: Error fetching user', error: e);
      final errorMessage = handleGrpcError(e);
      throw Exception(errorMessage);
    }
  }

  // Add more user-related methods here as needed
}
