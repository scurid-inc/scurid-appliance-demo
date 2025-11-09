import 'package:grpc/grpc.dart';
import '../src/proto/generated/edgeagent.pbgrpc.dart';

class EdgeAgentService {
  late ClientChannel _channel;
  late ScuridEdgeAgentAPIClient _client;
  
  final String host;
  final int port;

  EdgeAgentService({
    this.host = 'localhost',
    this.port = 4040,
  }) {
    _channel = ClientChannel(
      host,
      port: port,
      options: const ChannelOptions(
        credentials: ChannelCredentials.insecure(),
      ),
    );
    _client = ScuridEdgeAgentAPIClient(_channel);
  }

  Future<List<DeviceUser>> getDeviceUsers() async {
    try {
      final request = GetDeviceUsersReq();
      final response = await _client.getDeviceUsers(request);
      
      return response.deviceUsers.map((user) => DeviceUser(
        email: user.email,
        sessionId: user.sessionID,
        deviceName: _extractDeviceName(user.sessionID),
      )).toList();
    } on GrpcError catch (e) {
      // Handle specific gRPC error: empty device users list
      if (e.code == 2 && e.message?.contains('agentDeviceUsers is empty') == true) {
        // Return empty list instead of throwing error
        return [];
      }
      print('Error fetching device users: $e');
      rethrow;
    } catch (e) {
      print('Error fetching device users: $e');
      rethrow;
    }
  }

  String _extractDeviceName(String sessionId) {
    // Extract a readable device name from sessionID if possible
    // For now, just use a generic name with truncated session ID
    if (sessionId.length > 8) {
      return 'Device ${sessionId.substring(0, 8)}';
    }
    return 'Device $sessionId';
  }

  Future<void> dispose() async {
    await _channel.shutdown();
  }
}

class DeviceUser {
  final String email;
  final String sessionId;
  final String deviceName;

  DeviceUser({
    required this.email,
    required this.sessionId,
    required this.deviceName,
  });
}
