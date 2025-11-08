# WebView Security Guide

## Overview

WebViews embed a full browser engine in your app, which introduces security risks if not properly configured. This guide covers important security considerations for the Scurid Appliance Demo.

## Current Security Risks

### 1. **JavaScript Execution**
- ✅ **Status**: JavaScript is currently ENABLED
- **Risk**: Malicious JavaScript can:
  - Access sensitive data through JavaScript bridges
  - Perform XSS (Cross-Site Scripting) attacks
  - Redirect to phishing sites
  - Mine cryptocurrency in background
- **Recommendation**: Only enable JavaScript if absolutely required

### 2. **Untrusted Content**
- ⚠️ **Current Issue**: App loads user-specified URLs without validation
- **Risk**: Users can navigate to:
  - Malicious websites
  - Phishing pages
  - Sites with malware
- **Recommendation**: Implement URL whitelisting

### 3. **Data Injection**
- **Risk**: If passing data between Flutter and WebView JavaScript
  - Code injection vulnerabilities
  - Data leakage
- **Current Status**: Not implemented (good!)

### 4. **SSL/TLS Validation**
- **Risk**: Man-in-the-middle attacks if SSL errors are ignored
- **Current Status**: Default validation (good!)
- **Recommendation**: Never disable SSL certificate validation

### 5. **Local File Access**
- **Risk**: WebView accessing local files outside app sandbox
- **Current Status**: Default restrictions (good!)
- **Recommendation**: Keep disabled unless absolutely necessary

### 6. **Cookie/Session Management**
- **Risk**: Session hijacking, persistent tracking
- **Current Status**: Default browser cookies enabled
- **Recommendation**: Clear cookies on app close for sensitive apps

## Security Recommendations

### High Priority

#### 1. URL Whitelisting
```dart
// Add to WebViewDialog
bool _isUrlAllowed(String url) {
  final allowedDomains = [
    'google.com',
    'yahoo.com',
    'bing.com',
    'wikipedia.org',
    'reddit.com',
    'amazon.com',
    // Add your trusted domains
  ];
  
  final uri = Uri.parse(url);
  return allowedDomains.any((domain) => 
    uri.host == domain || uri.host.endsWith('.$domain')
  );
}

// Use in navigation callbacks
shouldOverrideUrlLoading: (controller, navigationAction) async {
  var uri = navigationAction.request.url!;
  if (!_isUrlAllowed(uri.toString())) {
    // Block navigation
    return NavigationActionPolicy.CANCEL;
  }
  return NavigationActionPolicy.ALLOW;
}
```

#### 2. Content Security Policy (CSP)
For InAppWebView (macOS):
```dart
initialSettings: InAppWebViewSettings(
  // Restrict what content can be loaded
  contentBlockers: [
    ContentBlocker(
      trigger: ContentBlockerTrigger(
        urlFilter: ".*",
        resourceType: [
          ContentBlockerTriggerResourceType.SCRIPT,
        ],
      ),
      action: ContentBlockerAction(
        type: ContentBlockerActionType.BLOCK,
      ),
    ),
  ],
),
```

#### 3. Disable Unnecessary Features
```dart
InAppWebViewSettings(
  javaScriptEnabled: false,  // Disable if not needed
  javaScriptCanOpenWindowsAutomatically: false,
  allowFileAccessFromFileURLs: false,
  allowUniversalAccessFromFileURLs: false,
  mediaPlaybackRequiresUserGesture: true,
),
```

#### 4. User Consent Before Navigation
```dart
// Show dialog before opening external URLs
void _openWebView(BuildContext context, User user) async {
  final confirmed = await showDialog<bool>(
    context: context,
    builder: (context) => AlertDialog(
      title: const Text('Open External Website'),
      content: Text('Open ${user.websiteUrl}?'),
      actions: [
        TextButton(
          onPressed: () => Navigator.pop(context, false),
          child: const Text('Cancel'),
        ),
        TextButton(
          onPressed: () => Navigator.pop(context, true),
          child: const Text('Open'),
        ),
      ],
    ),
  );
  
  if (confirmed == true) {
    showDialog(
      context: context,
      builder: (context) => WebViewDialog(
        url: user.websiteUrl,
        title: user.name,
      ),
    );
  }
}
```

### Medium Priority

#### 5. Add User-Agent Identification
Already implemented in main.dart for Linux:
```dart
'user-agent': 'ScuridApplianceDemo/1.0 (Linux)'
```

Also add for macOS InAppWebView:
```dart
initialSettings: InAppWebViewSettings(
  userAgent: 'ScuridApplianceDemo/1.0 (macOS)',
),
```

#### 6. Implement Timeout
```dart
// Add timeout for page loads
Future<void> _loadWithTimeout(String url) async {
  try {
    await Future.any([
      controller.loadUrl(urlRequest: URLRequest(url: WebUri(url))),
      Future.delayed(Duration(seconds: 30)).then((_) => 
        throw TimeoutException('Page load timeout')
      ),
    ]);
  } on TimeoutException {
    // Show error to user
  }
}
```

#### 7. Sanitize URLs
```dart
String _sanitizeUrl(String url) {
  // Ensure HTTPS
  if (url.startsWith('http://')) {
    url = url.replaceFirst('http://', 'https://');
  }
  
  // Remove potentially dangerous schemes
  if (url.startsWith('file://') || 
      url.startsWith('javascript:') ||
      url.startsWith('data:')) {
    throw SecurityException('Unsafe URL scheme');
  }
  
  return url;
}
```

### Low Priority (But Still Important)

#### 8. Clear Cache and Cookies
```dart
@override
void dispose() {
  // Clear webview data on close
  if (inAppWebViewController != null) {
    CookieManager.instance().deleteAllCookies();
    inAppWebViewController?.clearCache();
  }
  super.dispose();
}
```

#### 9. Disable Developer Tools in Production
```dart
InAppWebViewSettings(
  isInspectable: kDebugMode,  // Already implemented!
),
```

#### 10. Monitor and Log Navigation
```dart
onLoadStart: (controller, url) {
  // Log navigation for security auditing
  debugPrint('Navigating to: $url');
  // Could send to analytics or security monitoring
},
```

## Platform-Specific Considerations

### Linux (CEF-based)
- CEF has more attack surface than native WebViews
- Ensure CEF is kept up-to-date
- Remote debugging port (8888) is exposed - should be disabled in production

### macOS (WKWebView)
- Generally more secure due to Apple's sandboxing
- Limited JavaScript bridge compared to Android/Windows
- Still vulnerable to XSS and phishing

## Red Flags to Watch For

⚠️ **Never do these:**
1. Don't disable SSL certificate validation
2. Don't inject user input directly into JavaScript
3. Don't allow `file://` URLs unless absolutely necessary
4. Don't expose sensitive app data to JavaScript
5. Don't allow arbitrary URL navigation without validation
6. Don't ignore navigation errors silently

## Compliance Considerations

If handling sensitive data:
- **GDPR**: Inform users about cookies/tracking
- **PCI DSS**: Don't enter payment info in embedded WebViews
- **HIPAA**: Don't load PHI in WebViews without proper controls
- **SOC 2**: Implement logging and monitoring

## Testing for Security

```bash
# Test SSL validation
curl -k https://self-signed.badssl.com/  # Should fail

# Test XSS
# Navigate to: javascript:alert('XSS')  # Should be blocked

# Test cookie persistence
# Check if cookies survive app restart

# Test navigation blocking
# Try navigating to non-whitelisted domain
```

## Recommended Implementation Priority

For Scurid Appliance Demo:

1. **Immediate** (Before Production):
   - [ ] Implement URL whitelisting
   - [ ] Disable remote debugging port in production
   - [ ] Add user consent before opening URLs
   - [ ] Sanitize URLs before loading

2. **Soon**:
   - [ ] Add navigation timeout
   - [ ] Implement security logging
   - [ ] Clear cookies on app close
   - [ ] Add CSP headers if possible

3. **Eventually**:
   - [ ] Add security policy documentation
   - [ ] Implement security monitoring
   - [ ] Regular security audits
   - [ ] Update CEF/WebView dependencies regularly

## Additional Resources

- [OWASP Mobile Top 10](https://owasp.org/www-project-mobile-top-10/)
- [Flutter Security Best Practices](https://docs.flutter.dev/security)
- [InAppWebView Security](https://inappwebview.dev/docs/intro)
- [CEF Security](https://bitbucket.org/chromiumembedded/cef/wiki/Security)

## Current Security Status

**Scurid Appliance Demo** security posture:
- ✅ JavaScript debugging disabled in production
- ✅ SSL validation enabled (default)
- ✅ File access restricted (default)
- ⚠️ No URL whitelisting
- ⚠️ No user consent before navigation
- ⚠️ Remote debugging port exposed (Linux)
- ⚠️ JavaScript fully enabled

**Recommended Actions**: Implement URL whitelisting and user consent as minimum security baseline.
