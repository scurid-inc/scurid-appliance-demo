import * as logger from './utils/logger';

class SuccessRenderer {
  private userEmail: string;

  constructor() {
    logger.info('SuccessRenderer: constructor');
    this.userEmail = sessionStorage.getItem('userEmail') || 'User';
    this.init();
  }

  private init(): void {
    // Set welcome text
    const welcomeText = document.getElementById('welcomeText');
    if (welcomeText) {
      welcomeText.textContent = `Welcome ${this.userEmail}`;
    }
    logger.info(`SuccessRenderer: init - userEmail=${this.userEmail}`);

    // Load Grafana dashboard
    this.loadGrafana();
  }

  private loadGrafana(): void {
    const webview = document.getElementById('grafanaWebview') as any;
    const progressBar = document.getElementById('progressBar');
    const progressFill = document.getElementById('progressFill');

    if (!webview) {
      logger.error('SuccessRenderer: grafanaWebview element not found!');
      return;
    }

    // Determine theme based on system preference
    const isDark = window.matchMedia('(prefers-color-scheme: dark)').matches;
    const theme = isDark ? 'dark' : 'light';

    // Construct Grafana dashboard URL with explicit locale
    const grafanaUrl = `https://public.scurid.com/observer/d/e7592ba6-0d95-4ebf-bfab-5c7140af9a75/all-in-one?api_key=glsa_Mg7XbXmDELu3q8WglP4WQ6af4soi8Xcb_6116c629&orgId=1&theme=${theme}&kiosk&from=now-1h&to=now&refresh=5s&locale=en-US`;

    // Set user agent with locale information
    webview.setAttribute('useragent', navigator.userAgent);

    // Set webview to use system locale
    webview.setAttribute('httpreferrer', window.location.href);

    // Set up webview event listeners
    webview.addEventListener('did-start-loading', () => {
      logger.info('SuccessRenderer: grafana webview did-start-loading');
      if (progressBar) {
        progressBar.classList.remove('hidden');
        progressBar.classList.add('indeterminate');
      }

      // Inject locale fix before page loads
      webview.executeJavaScript(`
        // Override Intl to prevent locale errors
        if (typeof Intl !== 'undefined') {
          const originalDateTimeFormat = Intl.DateTimeFormat;
          Intl.DateTimeFormat = function(locales, options) {
            try {
              return new originalDateTimeFormat(locales || 'en-US', options);
            } catch (e) {
              // Fallback to en-US if locale fails
              return new originalDateTimeFormat('en-US', options);
            }
          };
          Intl.DateTimeFormat.prototype = originalDateTimeFormat.prototype;
          Intl.DateTimeFormat.supportedLocalesOf = originalDateTimeFormat.supportedLocalesOf;
        }
      `).catch((err: any) => {
        logger.error(`SuccessRenderer: locale injection error: ${String(err)}`);
      });
    });

    webview.addEventListener('did-stop-loading', () => {
      logger.info('SuccessRenderer: grafana webview did-stop-loading');
      if (progressBar) {
        progressBar.classList.add('hidden');
        progressBar.classList.remove('indeterminate');
      }
    });

    webview.addEventListener('load-commit', (event: any) => {
      logger.info(`SuccessRenderer: grafana webview load-commit - url: ${event.url}`);
    });

    webview.addEventListener('did-fail-load', (event: any) => {
      logger.error(`SuccessRenderer: grafana webview did-fail-load - errorCode: ${event.errorCode}, errorDescription: ${event.errorDescription}, url: ${event.validatedURL}`);
    });

    webview.addEventListener('console-message', (event: any) => {
      logger.info(`SuccessRenderer: grafana webview console - ${event.message}`);
    });

    webview.addEventListener('did-finish-load', () => {
      logger.info('SuccessRenderer: grafana webview did-finish-load');
    });

    // Wait for webview to be ready before setting src
    const loadUrl = () => {
      logger.info(`SuccessRenderer: setting webview src to: ${grafanaUrl}`);
      webview.src = grafanaUrl;
    };

    // Check if webview is already ready
    if (webview.partition) {
      loadUrl();
    } else {
      // Wait for dom-ready event
      webview.addEventListener('dom-ready', loadUrl, { once: true });
    }
  }

  logout(): void {
    logger.info('SuccessRenderer: logout - clearing session and navigating to index');
    // Clear session storage
    sessionStorage.removeItem('userEmail');

    // Navigate back to home page
    window.location.href = './index.html';
  }
}

// Initialize success renderer when DOM is ready
document.addEventListener('DOMContentLoaded', () => {
  const successRenderer = new SuccessRenderer();
  (window as any).successRenderer = successRenderer;
});
