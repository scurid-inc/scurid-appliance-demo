import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:window_manager/window_manager.dart';
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
  final _focusNode = FocusNode();

  @override
  void initState() {
    super.initState();
    // Request focus for keyboard shortcuts
    WidgetsBinding.instance.addPostFrameCallback((_) {
      _focusNode.requestFocus();
    });
  }

  @override
  void dispose() {
    _focusNode.dispose();
    super.dispose();
  }

  void _openWebView(BuildContext context, User user) {
    showDialog(
      context: context,
      builder: (context) => WebViewDialog(
        url: user.websiteUrl,
        title: user.name,
      ),
    );
  }

  Future<void> _handleKeyEvent(KeyEvent event) async {
    // Press F11 or Escape to toggle fullscreen
    if (event is KeyDownEvent) {
      if (event.logicalKey == LogicalKeyboardKey.f11 ||
          event.logicalKey == LogicalKeyboardKey.escape) {
        final isFullScreen = await windowManager.isFullScreen();
        await windowManager.setFullScreen(!isFullScreen);
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    // Get device name from first user (or set a default)
    final deviceName = widget.users.isNotEmpty ? widget.users.first.deviceName : 'Device';

    return KeyboardListener(
      focusNode: _focusNode,
      onKeyEvent: _handleKeyEvent,
      child: Scaffold(
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
                '${widget.users.length} users available',
                style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                      color: Colors.grey[600],
                    ),
              ),
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
      ),
    );
  }
}
