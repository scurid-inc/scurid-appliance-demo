import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_inappwebview/flutter_inappwebview.dart';
import 'package:webview_flutter/webview_flutter.dart';
import 'package:flutter_linux_webview/flutter_linux_webview.dart';
import 'data/mock_users.dart';
import 'pages/home_page.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  // Initialize Android WebView debugging
  if (!kIsWeb && defaultTargetPlatform == TargetPlatform.android) {
    await InAppWebViewController.setWebContentsDebuggingEnabled(kDebugMode);
  }

  // Initialize Linux WebView
  if (!kIsWeb && defaultTargetPlatform == TargetPlatform.linux) {
    LinuxWebViewPlugin.initialize(options: <String, String?>{
      'user-agent': 'ScuridApplianceDemo/1.0 (Linux)',
      'remote-debugging-port': '8888',
      'autoplay-policy': 'no-user-gesture-required',
    });

    // Configure WebView to use the LinuxWebView.
    WebView.platform = LinuxWebView();
  }

  runApp(const ScuridApplianceDemo());
}

class ScuridApplianceDemo extends StatelessWidget {
  const ScuridApplianceDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Scurid Appliance Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.blue,
          brightness: Brightness.light,
        ),
        useMaterial3: true,
      ),
      home: HomePage(users: mockUsers),
    );
  }
}
