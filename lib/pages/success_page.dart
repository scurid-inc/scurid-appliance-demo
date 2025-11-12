import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_inappwebview/flutter_inappwebview.dart';
import 'package:webview_flutter/webview_flutter.dart';

class SuccessPage extends StatefulWidget {
  final String email;

  const SuccessPage({
    super.key,
    required this.email,
  });

  @override
  State<SuccessPage> createState() => _SuccessPageState();
}

class _SuccessPageState extends State<SuccessPage> {
  InAppWebViewController? inAppWebViewController;
  WebViewController? webViewController;
  bool isLoading = true;
  double progress = 0;

  String _getGrafanaUrl() {
    final brightness = Theme.of(context).brightness;
    final theme = brightness == Brightness.dark ? 'dark' : 'light';
    return 'https://public.scurid.com/observer/login?orgId=1&theme=$theme&kiosk&from=now-1h&to=now&refresh=5s';
  }

  @override
  Widget build(BuildContext context) {
    final grafanaUrl = _getGrafanaUrl();
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Text(
          'Welcome ${widget.email}',
          style: const TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.w600,
          ),
        ),
        centerTitle: true,
        elevation: 0,
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 16.0),
            child: ElevatedButton.icon(
              onPressed: () => Navigator.of(context).pop(),
              icon: const Icon(Icons.logout),
              label: const Text('Log Out'),
              style: ElevatedButton.styleFrom(
                padding: const EdgeInsets.symmetric(
                  horizontal: 24,
                  vertical: 12,
                ),
              ),
            ),
          ),
        ],
      ),
      body: Column(
        children: [
          if (isLoading)
            LinearProgressIndicator(value: progress == 0 ? null : progress),
          Expanded(
            child: !kIsWeb && defaultTargetPlatform == TargetPlatform.linux
                ? _buildLinuxWebView(grafanaUrl)
                : _buildInAppWebView(grafanaUrl),
          ),
        ],
      ),
    );
  }

  Widget _buildLinuxWebView(String url) {
    return WebView(
      initialUrl: url,
      javascriptMode: JavascriptMode.unrestricted,
      onWebViewCreated: (WebViewController controller) {
        webViewController = controller;
      },
      onProgress: (int progressValue) {
        final progressDouble = progressValue / 100.0;
        setState(() {
          progress = progressDouble;
          isLoading = progressDouble < 1.0;
        });
      },
      onPageStarted: (String url) {
        setState(() => isLoading = true);
      },
      onPageFinished: (String url) {
        setState(() => isLoading = false);
      },
    );
  }

  Widget _buildInAppWebView(String url) {
    final settings = InAppWebViewSettings(
      isInspectable: kDebugMode,
      mediaPlaybackRequiresUserGesture: false,
      allowsInlineMediaPlayback: true,
      javaScriptEnabled: true,
      javaScriptCanOpenWindowsAutomatically: true,
      supportZoom: true,
      userAgent: 'ScuridApplianceDemo/1.0',
    );

    return InAppWebView(
      initialUrlRequest: URLRequest(url: WebUri(url)),
      initialSettings: settings,
      onWebViewCreated: (controller) {
        inAppWebViewController = controller;
      },
      onLoadStart: (controller, url) {
        setState(() => isLoading = true);
      },
      onLoadStop: (controller, url) {
        setState(() => isLoading = false);
      },
      onProgressChanged: (controller, progressValue) {
        final progressDouble = progressValue / 100.0;
        setState(() {
          progress = progressDouble;
          isLoading = progressDouble < 1.0;
        });
      },
    );
  }
}
