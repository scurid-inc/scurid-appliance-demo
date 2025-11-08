import 'package:flutter/material.dart';
import '../models/user.dart';
import '../widgets/user_card.dart';
import '../widgets/webview_dialog.dart';

class HomePage extends StatefulWidget {
  final List<User> users;

  const HomePage({super.key, required this.users});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
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
        title: Text('Scurid Appliance Demo'),
        centerTitle: true,
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 24),
            Expanded(
              child: ListView.builder(
                itemCount: widget.users.length,
                itemBuilder: (context, index) {
                  final user = widget.users[index];
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
