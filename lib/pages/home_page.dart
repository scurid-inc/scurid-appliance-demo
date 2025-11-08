import 'package:flutter/material.dart';
import '../models/user.dart';
import '../widgets/user_card.dart';
import '../widgets/webview_dialog.dart';

class HomePage extends StatelessWidget {
  final List<User> users;

  const HomePage({super.key, required this.users});

  void _openWebView(BuildContext context, User user) {
    showDialog(
      context: context,
      builder: (context) => WebViewDialog(
        url: user.websiteUrl,
        title: user.name,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    // Get device name from first user (or set a default)
    final deviceName = users.isNotEmpty ? users.first.deviceName : 'Device';

    return Scaffold(
      appBar: AppBar(
        title: Text(deviceName),
        centerTitle: true,
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Users',
              style: Theme.of(context).textTheme.headlineMedium?.copyWith(
                    fontWeight: FontWeight.bold,
                  ),
            ),
            const SizedBox(height: 8),
            Text(
              '${users.length} users available',
              style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                    color: Colors.grey[600],
                  ),
            ),
            const SizedBox(height: 24),
            Expanded(
              child: ListView.builder(
                itemCount: users.length,
                itemBuilder: (context, index) {
                  final user = users[index];
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
