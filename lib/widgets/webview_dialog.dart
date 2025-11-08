import 'dart:collection';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_inappwebview/flutter_inappwebview.dart';
import 'package:webview_flutter/webview_flutter.dart';

class WebViewDialog extends StatefulWidget {
  final String url;
  final String title;

  const WebViewDialog({
    super.key,
    required this.url,
    required this.title,
  });

  @override
  State<WebViewDialog> createState() => _WebViewDialogState();
}

class _WebViewDialogState extends State<WebViewDialog> {
  // For InAppWebView (macOS)
  InAppWebViewController? inAppWebViewController;
  final GlobalKey inAppWebViewKey = GlobalKey();

  // For webview_flutter (Linux)
  WebViewController? webViewController;

  bool isLoading = true;
  double progress = 0;

  @override
  void dispose() {
    // Clean up controllers
    inAppWebViewController = null;
    webViewController = null;
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Dialog(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16),
      ),
      child: SizedBox(
        width: MediaQuery.of(context).size.width * 0.8,
        height: MediaQuery.of(context).size.height * 0.8,
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: Theme.of(context).colorScheme.primaryContainer,
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(16),
                  topRight: Radius.circular(16),
                ),
              ),
              child: Row(
                children: [
                  Expanded(
                    child: Text(
                      widget.title,
                      style: Theme.of(context).textTheme.titleLarge?.copyWith(
                            fontWeight: FontWeight.w600,
                          ),
                    ),
                  ),
                  IconButton(
                    onPressed: () => Navigator.of(context).pop(),
                    icon: const Icon(Icons.close),
                    tooltip: 'Close',
                  ),
                ],
              ),
            ),
            if (isLoading)
              LinearProgressIndicator(value: progress == 0 ? null : progress),
            Expanded(
              child: ClipRRect(
                borderRadius: const BorderRadius.only(
                  bottomLeft: Radius.circular(16),
                  bottomRight: Radius.circular(16),
                ),
                child: !kIsWeb && defaultTargetPlatform == TargetPlatform.linux
                    ? _buildLinuxWebView()
                    : _buildInAppWebView(),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildLinuxWebView() {
    return WebView(
      initialUrl: widget.url,
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

  Widget _buildInAppWebView() {
    final settings = InAppWebViewSettings(
      isInspectable: kDebugMode,
      mediaPlaybackRequiresUserGesture: false,
      allowsInlineMediaPlayback: true,
      iframeAllowFullscreen: true,
      javaScriptEnabled: true,
    );

    return InAppWebView(
      key: inAppWebViewKey,
      initialUrlRequest: URLRequest(url: WebUri(widget.url)),
      initialUserScripts: UnmodifiableListView<UserScript>([]),
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


