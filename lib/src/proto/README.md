# gRPC Setup Guide

This directory contains the gRPC client setup and generated protobuf files.

## Structure

```
lib/
├── src/
│   ├── grpc_client/          # gRPC client implementations
│   │   └── appliance_client.dart
│   └── proto/
│       └── generated/        # Generated protobuf files (from .proto files)
├── data/
│   ├── repositories/         # Data access layer
│   │   ├── user_repository.dart
│   │   └── device_repository.dart
│   └── services/
│       └── grpc_service.dart # gRPC service initialization
└── utils/
    └── grpc_utils.dart       # gRPC utilities and helpers
```

## Current Status

✅ **Packages installed**: `grpc`, `protobuf`, `fixnum`
✅ **Directory structure created**
✅ **Mock client with sample methods**
✅ **Repository pattern implemented**
✅ **Service initialization layer**
✅ **Error handling utilities**

## Usage

### 1. Initialize gRPC Service

In your `main.dart`:

```dart
import 'package:scuridappliancedemo/data/services/grpc_service.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  
  // Initialize gRPC service
  await grpcService.initialize();
  
  // Optional: Set auth token
  grpcService.setAuthToken('your-jwt-token');
  
  runApp(const MyApp());
}
```

### 2. Use in Widgets

```dart
// Get users
final users = await grpcService.userRepository.getUsers();

// Get device
final device = await grpcService.deviceRepository.getDevice('device-123');

// Update device status
await grpcService.deviceRepository.updateDeviceStatus('device-123', 'online');
```

### 3. Error Handling

All repository methods throw exceptions with user-friendly messages:

```dart
try {
  final users = await grpcService.userRepository.getUsers();
  // Use users
} catch (e) {
  // e.toString() contains user-friendly error message
  print('Error: $e');
}
```

## Adding Real API Calls

### Step 1: Add Proto Files

1. Place your `.proto` files in a `protos/` directory at the project root
2. Example structure:
   ```
   protos/
   ├── user.proto
   ├── device.proto
   └── common.proto
   ```

### Step 2: Generate Dart Code

Add to `pubspec.yaml` (dev dependencies):

```yaml
dev_dependencies:
  protoc_plugin: ^21.1.2
```

Generate code:

```bash
# Install protoc compiler
# macOS: brew install protobuf
# Linux: apt-get install protobuf-compiler

# Generate Dart code
protoc --dart_out=grpc:lib/src/proto/generated \
  -Iprotos protos/*.proto
```

### Step 3: Replace Mock Client

Update `lib/src/grpc_client/appliance_client.dart`:

```dart
import 'package:scuridappliancedemo/src/proto/generated/user.pbgrpc.dart';
import 'package:scuridappliancedemo/src/proto/generated/device.pbgrpc.dart';

class ApplianceGrpcClient {
  late UserServiceClient _userServiceClient;
  late DeviceServiceClient _deviceServiceClient;

  Future<void> initialize() async {
    final channel = await createGrpcChannel();
    
    _userServiceClient = UserServiceClient(channel);
    _deviceServiceClient = DeviceServiceClient(channel);
  }
  
  Future<List<User>> getUsers() async {
    final request = GetUsersRequest();
    final response = await _userServiceClient.getUsers(
      request,
      options: await getCallOptions(),
    );
    return response.users;
  }
}
```

### Step 4: Update Repositories

Replace mock models with generated proto classes:

```dart
class UserRepository {
  Future<List<User>> getUsers() async {
    // Now returns actual proto User objects
    return await _grpcClient.getUsers();
  }
}
```

## Configuration

### Development vs Production

The app automatically selects the right configuration:

- **Development** (debug mode):
  - Host: `localhost`
  - Port: `50051`
  - Security: Insecure (no TLS)

- **Production** (release mode):
  - Host: `api.scurid.com`
  - Port: `443`
  - Security: Secure (TLS)

### Custom Configuration

Override the default configuration:

```dart
await grpcService.initialize(
  config: const GrpcConfig(
    host: 'custom.api.com',
    port: 8080,
    useSecure: true,
  ),
);
```

### TLS Certificate

For secure connections, provide a CA certificate:

```dart
final caCert = await rootBundle.loadString('assets/certs/ca-cert.pem');

await grpcService.initialize(
  caCertPem: caCert,
);
```

## Authentication

### Set Token

```dart
grpcService.setAuthToken('eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9...');
```

### Clear Token

```dart
grpcService.setAuthToken('');
```

The token is automatically included in the `authorization` header as:
```
authorization: Bearer <token>
```

## Mock Methods (Current)

The following mock methods are available for testing:

### UserRepository
- `getUsers()` - Returns list of mock users
- `getUserById(String userId)` - Returns mock user by ID

### DeviceRepository
- `getDevice(String deviceId)` - Returns mock device
- `updateDeviceStatus(String deviceId, String status)` - Updates device status

## Error Handling

All gRPC errors are handled and converted to user-friendly messages:

| gRPC Status Code | User Message |
|-----------------|--------------|
| `UNAVAILABLE` | Service unavailable. Please check your connection. |
| `UNAUTHENTICATED` | Authentication failed. Please log in again. |
| `PERMISSION_DENIED` | Permission denied. You don't have access to this resource. |
| `NOT_FOUND` | Resource not found. |
| `DEADLINE_EXCEEDED` | Request timeout. Please try again. |
| `INTERNAL` | Internal server error. Please try again later. |

## Next Steps

1. **Add proto files** - Define your API contracts in `.proto` files
2. **Generate code** - Run `protoc` to generate Dart gRPC clients
3. **Replace mock client** - Implement real API calls
4. **Add repositories** - Create repositories for each service
5. **Integrate with UI** - Use repositories in your widgets

## Example Proto File

`protos/user.proto`:

```protobuf
syntax = "proto3";

package scurid.appliance;

service UserService {
  rpc GetUsers(GetUsersRequest) returns (GetUsersResponse);
  rpc GetUser(GetUserRequest) returns (User);
}

message GetUsersRequest {}

message GetUsersResponse {
  repeated User users = 1;
}

message GetUserRequest {
  string user_id = 1;
}

message User {
  string id = 1;
  string name = 2;
  string email = 3;
  string device_name = 4;
  string website_url = 5;
}
```

## References

- [gRPC Dart Tutorial](https://grpc.io/docs/languages/dart/)
- [Protocol Buffers Guide](https://developers.google.com/protocol-buffers/docs/proto3)
- [Flutter gRPC Best Practices](https://flutter.dev/docs/development/data-and-backend/networking)
