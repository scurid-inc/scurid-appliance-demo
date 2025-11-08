import 'dart:developer';

import 'package:scuridappliancedemo/src/grpc_client/appliance_client.dart';
import 'package:scuridappliancedemo/utils/grpc_utils.dart';

/// Repository for device-related API calls
class DeviceRepository {
  final ApplianceGrpcClient _grpcClient;

  DeviceRepository(this._grpcClient);

  /// Get device by ID
  Future<MockDevice> getDevice(String deviceId) async {
    try {
      log('DeviceRepository: Fetching device $deviceId');
      final device = await _grpcClient.getDevice(deviceId);
      log('DeviceRepository: Fetched device ${device.name}');
      return device;
    } catch (e) {
      log('DeviceRepository: Error fetching device', error: e);
      final errorMessage = handleGrpcError(e);
      throw Exception(errorMessage);
    }
  }

  /// Update device status
  Future<bool> updateDeviceStatus(String deviceId, String status) async {
    try {
      log('DeviceRepository: Updating device $deviceId status to $status');
      final result = await _grpcClient.updateDeviceStatus(deviceId, status);
      log('DeviceRepository: Update successful');
      return result;
    } catch (e) {
      log('DeviceRepository: Error updating device status', error: e);
      final errorMessage = handleGrpcError(e);
      throw Exception(errorMessage);
    }
  }

  // Add more device-related methods here as needed
}
