import { EdgeAgentService, DeviceUser, parseGrpcError } from './services/edgeAgentService';
import * as logger from './utils/logger';

class Renderer {
  private edgeAgentService: EdgeAgentService;
  private currentUser: DeviceUser | null = null;

  constructor() {
    logger.info('Renderer: constructor');
    this.edgeAgentService = new EdgeAgentService();
    this.init();
  }

  private init(): void {
    logger.info('Renderer: init - loading users');
    // Load users on startup
    this.loadUsers();
  }

  async loadUsers(): Promise<void> {
    try {
      logger.info('Renderer: loadUsers - start');
      this.showLoading();

      const users = await this.edgeAgentService.getDeviceUsers();
      logger.info(`Renderer: loadUsers - received ${users.length} users`);

      if (users.length === 0) {
        logger.info('Renderer: loadUsers - no users');
        this.showEmpty();
      } else {
        logger.info('Renderer: loadUsers - showing users');
        this.showUsers(users);
      }
    } catch (error) {
      logger.error(`Renderer: loadUsers - error: ${String(error)}`);
      this.showError(parseGrpcError(error));
    }
  }

  // Public method for buttons to call
  public reloadUsers(): void {
    logger.info('Renderer: reloadUsers - triggered from UI');
    this.loadUsers();
  }

  private showLoading(): void {
    logger.info('Renderer: UI -> showLoading');
    document.getElementById('loadingState')?.classList.remove('hidden');
    document.getElementById('errorState')?.classList.add('hidden');
    document.getElementById('emptyState')?.classList.add('hidden');
    document.getElementById('usersGrid')?.classList.add('hidden');
  }

  private showError(message: string): void {
    logger.info(`Renderer: UI -> showError: ${message}`);
    document.getElementById('loadingState')?.classList.add('hidden');
    document.getElementById('errorState')?.classList.remove('hidden');
    document.getElementById('emptyState')?.classList.add('hidden');
    document.getElementById('usersGrid')?.classList.add('hidden');

    const errorMessage = document.getElementById('errorMessage');
    if (errorMessage) {
      errorMessage.textContent = message;
    }
  }

  private showEmpty(): void {
    logger.info('Renderer: UI -> showEmpty');
    document.getElementById('loadingState')?.classList.add('hidden');
    document.getElementById('errorState')?.classList.add('hidden');
    document.getElementById('emptyState')?.classList.remove('hidden');
    document.getElementById('usersGrid')?.classList.add('hidden');
  }

  private showUsers(users: DeviceUser[]): void {
    logger.info('Renderer: UI -> showUsers');
    document.getElementById('loadingState')?.classList.add('hidden');
    document.getElementById('errorState')?.classList.add('hidden');
    document.getElementById('emptyState')?.classList.add('hidden');
    document.getElementById('usersGrid')?.classList.remove('hidden');

    const usersGrid = document.getElementById('usersGrid');
    if (!usersGrid) return;

    usersGrid.innerHTML = '';

    users.forEach(user => {
      const userCard = this.createUserCard(user);
      usersGrid.appendChild(userCard);
    });
  }

  private createUserCard(user: DeviceUser): HTMLElement {
    const card = document.createElement('div');
    card.className = 'user-card';
    card.onclick = () => {
      logger.info(`Renderer: user card clicked: ${user.email} (${user.sessionId})`);
      this.handleUserClick(user);
    };

    const avatar = document.createElement('div');
    avatar.className = 'user-avatar';
    avatar.textContent = user.email.charAt(0).toUpperCase();

    const email = document.createElement('div');
    email.className = 'user-email';
    email.textContent = user.email;

    const session = document.createElement('div');
    session.className = 'user-session';
    session.textContent = `Session: ${user.sessionId.substring(0, 16)}...`;

    card.appendChild(avatar);
    card.appendChild(email);
    card.appendChild(session);

    return card;
  }

  private async handleUserClick(user: DeviceUser): Promise<void> {
    this.currentUser = user;

    try {
      logger.info(`Renderer: handleUserClick - initiating biometric auth for session ${user.sessionId}`);
      // Show loading modal
      this.showModal('Initiating biometric authentication...');

      // Call BiometricAuth API
      const verificationUrl = await this.edgeAgentService.biometricAuth(user.sessionId);
      logger.info(`Renderer: biometricAuth returned URL: ${verificationUrl}`);

      // Hide loading modal
      this.hideModal();

      // Open webview with verification URL
      await this.openWebView(verificationUrl, user.email);

      // After webview closes, check authorization
      await this.checkAuthorization(user);
    } catch (err) {
      logger.error(`Renderer: Error in user authentication: ${String(err)}`);
      this.hideModal();
      this.showAlert('Authentication Error', `Failed to initiate biometric authentication:\n\n${parseGrpcError(err)}`);
    }
  }

  private showModal(text: string): void {
    const modal = document.getElementById('loadingModal');
    const modalText = document.getElementById('loadingModalText');

    logger.info(`Renderer: showModal -> ${text}`);
    if (modal) modal.classList.add('active');
    if (modalText) modalText.textContent = text;
  }

  private hideModal(): void {
    const modal = document.getElementById('loadingModal');
    logger.info('Renderer: hideModal');
    if (modal) modal.classList.remove('active');
  }

  private openWebView(url: string, email: string): Promise<void> {
    return new Promise((resolve) => {
      const webviewModal = document.getElementById('webviewModal');
      const webview = document.getElementById('webview') as any;
      const title = document.getElementById('webviewTitle');

      if (title) {
        title.textContent = `Biometric Authentication - ${email}`;
      }

      if (webview) {
        logger.info(`Renderer: openWebView -> setting webview src to ${url}`);
        webview.src = url;
      }

      if (webviewModal) {
        webviewModal.classList.add('active');
      }

      // Store resolve function for later use
      (window as any).webviewResolve = resolve;
    });
  }

  closeWebView(): void {
    const webviewModal = document.getElementById('webviewModal');
    const webview = document.getElementById('webview') as any;

    logger.info('Renderer: closeWebView');
    if (webviewModal) {
      webviewModal.classList.remove('active');
    }

    if (webview) {
      webview.src = 'about:blank';
    }

    // Resolve the promise
    if ((window as any).webviewResolve) {
      (window as any).webviewResolve();
      delete (window as any).webviewResolve;
    }
  }

  private async checkAuthorization(user: DeviceUser): Promise<void> {
    try {
      logger.info('Renderer: checkAuthorization - start');
      this.showModal('Verifying authorization...');

      const isAuthorized = await this.edgeAgentService.isAuthorised(user.sessionId);
      logger.info(`Renderer: checkAuthorization -> ${isAuthorized}`);

      this.hideModal();

      if (isAuthorized) {
        logger.info('Renderer: checkAuthorization -> authorized, navigating to success');
        // Navigate to success page
        this.navigateToSuccess(user.email);
      } else {
        logger.info('Renderer: checkAuthorization -> not authorized');
        this.showAlert(
          'Authorization Failed',
          'The biometric authentication was not successful. Please try again.'
        );
      }
    } catch (error) {
      logger.error(`Renderer: Error checking authorization: ${String(error)}`);
      this.hideModal();
      this.showAlert(
        'Verification Error',
        `Failed to verify authorization:\n\n${parseGrpcError(error)}`
      );
    }
  }

  private showAlert(title: string, message: string): void {
    // Simple alert for now - could be enhanced with a custom modal
    logger.info(`Renderer: showAlert -> ${title}: ${message}`);
    alert(`${title}\n\n${message}`);
  }

  private navigateToSuccess(email: string): void {
    // Store email in sessionStorage for success page
    logger.info(`Renderer: navigateToSuccess -> storing userEmail=${email}`);
    sessionStorage.setItem('userEmail', email);

    // Navigate to success page
    window.location.href = './success.html';
  }
}

// Initialize renderer when DOM is ready
const renderer = new Renderer();
(window as any).renderer = renderer;

// Add global function for buttons
(window as any).reloadUsers = () => {
  logger.info('Global: reloadUsers called');
  renderer.loadUsers();
};

document.addEventListener('DOMContentLoaded', () => {
  logger.info('Renderer: DOMContentLoaded - renderer already initialized');
});
