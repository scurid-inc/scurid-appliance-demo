import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

import 'package:window_manager/window_manager.dart';
import 'pages/home_page.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  // Initialize window manager for desktop platforms
  if (!kIsWeb && (defaultTargetPlatform == TargetPlatform.linux ||
      defaultTargetPlatform == TargetPlatform.macOS ||
      defaultTargetPlatform == TargetPlatform.windows)) {
    await windowManager.ensureInitialized();

    const windowOptions = WindowOptions(
      fullScreen: true,
      skipTaskbar: false,
      titleBarStyle: TitleBarStyle.hidden,
      windowButtonVisibility: false,
    );

    await windowManager.waitUntilReadyToShow(windowOptions, () async {
      await windowManager.setFullScreen(true);
      await windowManager.show();
      await windowManager.focus();
    });
  }


  runApp(const ScuridApplianceDemo());
}

class ScuridApplianceDemo extends StatefulWidget {
  const ScuridApplianceDemo({super.key});

  @override
  State<ScuridApplianceDemo> createState() => _ScuridApplianceDemoState();
}

class _ScuridApplianceDemoState extends State<ScuridApplianceDemo> with WindowListener {
  @override
  void initState() {
    super.initState();
    windowManager.addListener(this);
    _enforceFullScreen();
  }

  @override
  void dispose() {
    windowManager.removeListener(this);
    super.dispose();
  }

  Future<void> _enforceFullScreen() async {
    if (!kIsWeb && (defaultTargetPlatform == TargetPlatform.linux ||
        defaultTargetPlatform == TargetPlatform.macOS ||
        defaultTargetPlatform == TargetPlatform.windows)) {
      await windowManager.setFullScreen(true);
      await windowManager.setPreventClose(true);
    }
  }

  @override
  void onWindowEvent(String eventName) {
    if (eventName == 'minimize' || eventName == 'restore') {
      _enforceFullScreen();
    }
  }

  @override
  void onWindowMinimize() {
    _enforceFullScreen();
  }

  @override
  void onWindowRestore() {
    _enforceFullScreen();
  }

  @override
  void onWindowFocus() {
    _enforceFullScreen();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Scurid Appliance Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: Color(0xFF1565C0),
          brightness: Brightness.light,
        ),
        useMaterial3: true,
      ),
      home: HomePage(),
    );
  }
}
