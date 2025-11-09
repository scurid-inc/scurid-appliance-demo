import 'package:flutter/material.dart';
import '../models/user.dart';
import '../services/edge_agent_service.dart';
import '../widgets/user_card.dart';
import '../widgets/webview_dialog.dart';

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

  Future<void> _loadUsers() async {
    try {
      setState(() {
        _isLoading = true;
        _error = null;
      });

      final deviceUsers = await _edgeAgentService.getDeviceUsers();
      
      setState(() {
        _users = deviceUsers.asMap().entries.map((entry) {
          final index = entry.key;
          final deviceUser = entry.value;
          return User(
            id: deviceUser.sessionId,
            name: deviceUser.email.split('@')[0], // Use part before @
            email: deviceUser.email,
            deviceName: deviceUser.deviceName,
            websiteUrl: 'https://www.google.com', // Default URL
          );
        }).toList();
        _isLoading = false;
      });
    } catch (e) {
      setState(() {
        _error = 'Failed to load users: $e';
        _isLoading = false;
      });
    }
  }

  @override
  void dispose() {
    _edgeAgentService.dispose();
    super.dispose();
  }

  void _openWebView(BuildContext context, User user) {
    showDialog(
      context: context,
      builder: (context) =>
          WebViewDialog(url: user.websiteUrl, title: user.name),
    );
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
              const Expanded(
                child: Center(
                  child: CircularProgressIndicator(),
                ),
              )
            else if (_error != null)
              Expanded(
                child: Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.error_outline, size: 64, color: Colors.red),
                      const SizedBox(height: 16),
                      Text(
                        _error!,
                        style: TextStyle(color: Colors.red),
                        textAlign: TextAlign.center,
                      ),
                      const SizedBox(height: 16),
                      ElevatedButton(
                        onPressed: _loadUsers,
                        child: const Text('Retry'),
                      ),
                    ],
                  ),
                ),
              )
            else if (_users.isEmpty)
              const Expanded(
                child: Center(
                  child: Text('No users found'),
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
