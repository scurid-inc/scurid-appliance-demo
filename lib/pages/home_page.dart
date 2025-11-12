import 'dart:developer';

import 'package:flutter/material.dart';
import '../models/user.dart';
import '../services/edge_agent_service.dart';
import '../widgets/user_card.dart';
import '../widgets/webview_dialog.dart';
import 'success_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final EdgeAgentService _edgeAgentService = EdgeAgentService();
  List<User> _users = [];
  bool _isLoading = true;
  String? _error;

  @override
  void initState() {
    super.initState();
    _loadUsers();
  }

  String _parseErrorMessage(dynamic error) {
    final errorString = error.toString();

    // Check for gRPC UNAVAILABLE error
    if (errorString.contains('code: 14') ||
        errorString.contains('UNAVAILABLE') ||
        errorString.contains('Connection refused')) {
      return 'Unable to connect to Scurid Edge Agent.\n\n'
          'Please ensure the edge agent is running on localhost:4040';
    }

    // Check for gRPC UNKNOWN error
    if (errorString.contains('code: 2') || errorString.contains('UNKNOWN')) {
      return 'Edge agent returned an error.\n\n'
          'Please check the edge agent logs for details.';
    }

    // Check for gRPC UNAUTHENTICATED error
    if (errorString.contains('code: 16') ||
        errorString.contains('UNAUTHENTICATED')) {
      return 'Authentication failed.\n\nPlease check your credentials.';
    }

    // Check for gRPC PERMISSION_DENIED error
    if (errorString.contains('code: 7') ||
        errorString.contains('PERMISSION_DENIED')) {
      return 'Access denied.\n\nYou do not have permission to access this resource.';
    }

    // Check for gRPC DEADLINE_EXCEEDED error
    if (errorString.contains('code: 4') ||
        errorString.contains('DEADLINE_EXCEEDED')) {
      return 'Request timed out.\n\nThe edge agent took too long to respond.';
    }

    // Check for network errors
    if (errorString.contains('SocketException') ||
        errorString.contains('Network')) {
      return 'Network error occurred.\n\nPlease check your connection.';
    }

    // Default error message
    return 'An unexpected error occurred.\n\nPlease try again later.';
  }

  Future<void> _loadUsers() async {
    try {
      setState(() {
        _isLoading = true;
        _error = null;
      });

      final deviceUsers = await _edgeAgentService.getDeviceUsers();

      setState(() {
        _users = deviceUsers.asMap().entries.map((entry) {
          final deviceUser = entry.value;
          return User(sessionId: deviceUser.sessionId, email: deviceUser.email);
        }).toList();
        _isLoading = false;
      });
    } catch (e) {
      setState(() {
        _error = _parseErrorMessage(e);
        _isLoading = false;
      });
    }
  }

  @override
  void dispose() {
    _edgeAgentService.dispose();
    super.dispose();
  }

  Future<void> _openWebView(BuildContext context, User user) async {
    try {
      // Show loading dialog
      showDialog(
        context: context,
        barrierDismissible: false,
        builder: (context) => const Center(
          child: Card(
            child: Padding(
              padding: EdgeInsets.all(24.0),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  CircularProgressIndicator(),
                  SizedBox(height: 16),
                  Text('Initiating biometric authentication...'),
                ],
              ),
            ),
          ),
        ),
      );

      // Call BiometricAuth API to get verification URL
      final verificationUrl = await _edgeAgentService.biometricAuth(
        user.sessionId,
      );

      // Close loading dialog
      if (context.mounted) Navigator.pop(context);

      // Open webview with the verification URL
      if (context.mounted) {
        await showDialog(
          context: context,
          builder: (context) => WebViewDialog(
            url: verificationUrl,
            title: 'Biometric Authentication - ${user.email}',
          ),
        );

        // After webview closes, check authorization
        if (context.mounted) {
          await _checkAuthorization(context, user);
        }
      }
    } catch (e) {
      // Close loading dialog if still open
      if (context.mounted) Navigator.pop(context);

      // Show error dialog
      if (context.mounted) {
        showDialog(
          context: context,
          builder: (context) => AlertDialog(
            title: const Text('Authentication Error'),
            content: Text(
              'Failed to initiate biometric authentication:\n\n${_parseErrorMessage(e)}',
            ),
            actions: [
              TextButton(
                onPressed: () => Navigator.pop(context),
                child: const Text('OK'),
              ),
            ],
          ),
        );
      }
    }
  }

  Future<void> _checkAuthorization(BuildContext context, User user) async {
    // Show progress indicator
    showDialog(
      context: context,
      barrierDismissible: false,
      builder: (context) => const Center(
        child: Card(
          child: Padding(
            padding: EdgeInsets.all(24.0),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                CircularProgressIndicator(),
                SizedBox(height: 16),
                Text('Verifying authorization...'),
              ],
            ),
          ),
        ),
      ),
    );

    try {
      // Call IsAuthorised API
      final isAuthorized = await _edgeAgentService.isAuthorised(user.sessionId);

      log('Authorization result for user ${user.email}: $isAuthorized');

      // Close progress indicator
      if (context.mounted) Navigator.pop(context);

      if (isAuthorized) {
        // Navigate to success page
        if (context.mounted) {
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (context) => SuccessPage(email: user.email),
            ),
          );
        }
      } else {
        // Show failure message but stay on main page
        if (context.mounted) {
          showDialog(
            context: context,
            builder: (context) => AlertDialog(
              title: const Text('Authorization Failed'),
              content: const Text(
                'The biometric authentication was not successful. Please try again.',
              ),
              actions: [
                TextButton(
                  onPressed: () => Navigator.pop(context),
                  child: const Text('OK'),
                ),
              ],
            ),
          );
        }
      }
    } catch (e) {
      // Close progress indicator
      if (context.mounted) Navigator.pop(context);

      // Show error dialog
      if (context.mounted) {
        showDialog(
          context: context,
          builder: (context) => AlertDialog(
            title: const Text('Verification Error'),
            content: Text(
              'Failed to verify authorization:\n\n${_parseErrorMessage(e)}',
            ),
            actions: [
              TextButton(
                onPressed: () => Navigator.pop(context),
                child: const Text('OK'),
              ),
            ],
          ),
        );
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'SCURID APPLIANCE',
          style: TextStyle(
            fontSize: 56,
            fontWeight: FontWeight.w900,
            letterSpacing: 4.0,
            fontFamily: 'monospace',
            shadows: [
              Shadow(
                offset: Offset(2, 2),
                blurRadius: 4,
                color: Colors.black26,
              ),
            ],
          ),
        ),
        centerTitle: true,
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 24),
            if (_isLoading)
              const Expanded(child: Center(child: CircularProgressIndicator()))
            else if (_error != null)
              Expanded(
                child: Center(
                  child: Card(
                    elevation: 4,
                    margin: EdgeInsets.all(32),
                    child: Padding(
                      padding: EdgeInsets.all(48),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Icon(
                            Icons.warning_amber_rounded,
                            size: 80,
                            color: Theme.of(context).colorScheme.error,
                          ),
                          const SizedBox(height: 24),
                          Text(
                            'Connection Error',
                            style: Theme.of(context).textTheme.headlineSmall
                                ?.copyWith(fontWeight: FontWeight.bold),
                          ),
                          const SizedBox(height: 16),
                          Text(
                            _error!,
                            style: Theme.of(context).textTheme.bodyLarge,
                            textAlign: TextAlign.center,
                          ),
                          const SizedBox(height: 32),
                          ElevatedButton.icon(
                            onPressed: _loadUsers,
                            icon: Icon(Icons.refresh),
                            label: const Text('Retry Connection'),
                            style: ElevatedButton.styleFrom(
                              padding: EdgeInsets.symmetric(
                                horizontal: 32,
                                vertical: 16,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              )
            else if (_users.isEmpty)
              Expanded(
                child: Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.people_outline, size: 80, color: Colors.grey),
                      const SizedBox(height: 24),
                      Text(
                        'No Users Found',
                        style: Theme.of(context).textTheme.headlineSmall
                            ?.copyWith(fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(height: 16),
                      Text(
                        'No device users are currently available.',
                        style: Theme.of(
                          context,
                        ).textTheme.bodyLarge?.copyWith(color: Colors.grey),
                      ),
                      const SizedBox(height: 32),
                      ElevatedButton.icon(
                        onPressed: _loadUsers,
                        icon: Icon(Icons.refresh),
                        label: const Text('Refresh'),
                      ),
                    ],
                  ),
                ),
              )
            else
              Expanded(
                child: ListView.builder(
                  itemCount: _users.length,
                  itemBuilder: (context, index) {
                    final user = _users[index];
                    return UserCard(
                      user: user,
                      onTap: () => _openWebView(context, user),
                    );
                  },
                ),
              ),
          ],
        ),
      ),
    );
  }
}
