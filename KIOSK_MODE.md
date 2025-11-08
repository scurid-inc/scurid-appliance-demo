# Kiosk Mode Setup for Embedded Linux

## Overview

This guide explains how to configure your embedded Linux hardware to automatically boot into the Scurid Appliance Demo in kiosk mode, creating a locked-down, single-purpose device.

## Prerequisites

- Embedded Linux device (x86_64 architecture)
- Display connected
- Network access (if needed for webview content)
- Root/sudo access

## Quick Start

### Option 1: Systemd Service (Recommended)

This method auto-starts the app on boot and restarts it if it crashes.

#### 1. Create systemd service file:

```bash
sudo nano /etc/systemd/system/scurid-kiosk.service
```

Add the following content:

```ini
[Unit]
Description=Scurid Appliance Demo Kiosk
After=graphical.target
Wants=graphical.target

[Service]
Type=simple
User=YOUR_USERNAME
Group=YOUR_USERNAME
Environment="DISPLAY=:0"
Environment="XAUTHORITY=/home/YOUR_USERNAME/.Xauthority"
WorkingDirectory=/path/to/scuridappliancedemo/build/linux/x64/release/bundle
ExecStart=/path/to/scuridappliancedemo/build/linux/x64/release/bundle/scuridappliancedemo
Restart=always
RestartSec=3

[Install]
WantedBy=graphical.target
```

#### 2. Enable and start the service:

```bash
sudo systemctl daemon-reload
sudo systemctl enable scurid-kiosk.service
sudo systemctl start scurid-kiosk.service
```

#### 3. Check status:

```bash
sudo systemctl status scurid-kiosk.service
```

### Option 2: X11 Autostart

For systems using X11 display server.

#### 1. Create autostart entry:

```bash
mkdir -p ~/.config/autostart
nano ~/.config/autostart/scurid-kiosk.desktop
```

Add:

```ini
[Desktop Entry]
Type=Application
Name=Scurid Kiosk
Exec=/path/to/scuridappliancedemo/build/linux/x64/release/bundle/scuridappliancedemo
Hidden=false
NoDisplay=false
X-GNOME-Autostart-enabled=true
```

### Option 3: Init Scripts (SysVinit)

For older systems not using systemd.

#### 1. Create init script:

```bash
sudo nano /etc/init.d/scurid-kiosk
```

Add:

```bash
#!/bin/bash
### BEGIN INIT INFO
# Provides:          scurid-kiosk
# Required-Start:    $local_fs $network $x11
# Required-Stop:     $local_fs
# Default-Start:     2 3 4 5
# Default-Stop:      0 1 6
# Short-Description: Scurid Kiosk Mode
### END INIT INFO

KIOSK_USER="YOUR_USERNAME"
KIOSK_APP="/path/to/scuridappliancedemo/build/linux/x64/release/bundle/scuridappliancedemo"

case "$1" in
  start)
    echo "Starting Scurid Kiosk..."
    su - $KIOSK_USER -c "DISPLAY=:0 $KIOSK_APP" &
    ;;
  stop)
    echo "Stopping Scurid Kiosk..."
    pkill -f scuridappliancedemo
    ;;
  restart)
    $0 stop
    sleep 2
    $0 start
    ;;
  *)
    echo "Usage: /etc/init.d/scurid-kiosk {start|stop|restart}"
    exit 1
    ;;
esac

exit 0
```

#### 2. Make executable and enable:

```bash
sudo chmod +x /etc/init.d/scurid-kiosk
sudo update-rc.d scurid-kiosk defaults
```

## Full Kiosk Configuration

For a true kiosk experience, you'll want to:

### 1. Disable Screen Blanking

```bash
# Add to /etc/X11/xorg.conf or ~/.xinitrc
xset s off         # Don't activate screensaver
xset -dpms         # Disable DPMS (Energy Star) features
xset s noblank     # Don't blank the video device
```

Or create systemd service:

```bash
sudo nano /etc/systemd/system/disable-screen-blank.service
```

```ini
[Unit]
Description=Disable screen blanking
After=graphical.target

[Service]
Type=oneshot
User=YOUR_USERNAME
Environment="DISPLAY=:0"
ExecStart=/usr/bin/xset s off
ExecStart=/usr/bin/xset -dpms
ExecStart=/usr/bin/xset s noblank

[Install]
WantedBy=graphical.target
```

### 2. Hide Cursor

```bash
sudo apt-get install unclutter
```

Add to autostart or systemd:

```bash
unclutter -idle 0.01 -root &
```

### 3. Disable Alt+F4 and Other Shortcuts

Create `~/.config/openbox/rc.xml` (if using Openbox):

```xml
<keyboard>
  <keybind key="A-F4">
    <action name="Execute">
      <execute>true</execute>
    </action>
  </keybind>
  <keybind key="C-A-T">
    <action name="Execute">
      <execute>true</execute>
    </action>
  </keybind>
</keyboard>
```

### 4. Run in Fullscreen

Modify your Flutter app to start in fullscreen:

```dart
// In lib/main.dart
Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  
  // Set fullscreen on Linux
  if (!kIsWeb && defaultTargetPlatform == TargetPlatform.linux) {
    // You may need to add window_manager package
    // Or use --fullscreen flag when launching
  }
  
  // ... rest of initialization
}
```

Or launch with fullscreen flag:

```bash
/path/to/scuridappliancedemo --fullscreen
```

### 5. Prevent TTY Switching

```bash
sudo nano /etc/X11/xorg.conf
```

Add:

```
Section "ServerFlags"
    Option "DontVTSwitch" "true"
    Option "DontZap" "true"
EndSection
```

### 6. Auto-Login

#### For systemd-based systems:

```bash
sudo mkdir -p /etc/systemd/system/getty@tty1.service.d
sudo nano /etc/systemd/system/getty@tty1.service.d/autologin.conf
```

Add:

```ini
[Service]
ExecStart=
ExecStart=-/sbin/agetty --autologin YOUR_USERNAME --noclear %I $TERM
Type=idle
```

Then auto-start X:

Add to `~/.bash_profile`:

```bash
if [[ -z $DISPLAY ]] && [[ $(tty) = /dev/tty1 ]]; then
  startx
fi
```

### 7. Watchdog/Auto-Recovery

Add to systemd service file:

```ini
[Service]
Restart=always
RestartSec=3
WatchdogSec=30
```

## Minimal Window Manager Setup

For embedded systems, use a lightweight window manager:

### Install Openbox:

```bash
sudo apt-get install openbox xserver-xorg xinit
```

### Create `~/.xinitrc`:

```bash
#!/bin/bash

# Disable screen blanking
xset s off
xset -dpms
xset s noblank

# Hide cursor
unclutter -idle 0.01 -root &

# Start app in fullscreen
/path/to/scuridappliancedemo/build/linux/x64/release/bundle/scuridappliancedemo &

# Start window manager
exec openbox-session
```

### Make executable:

```bash
chmod +x ~/.xinitrc
```

## Hardware-Specific Considerations

### Raspberry Pi / ARM Devices

Note: Current Flutter Linux build is x86_64. For ARM:
- Consider using Flutter Web build served locally
- Or cross-compile Flutter engine for ARM
- Or use a different approach (Qt/QML, Electron)

### Industrial/Embedded x86 PCs

Should work out of the box. Additional considerations:
- Use SSD/eMMC for reliability
- Configure read-only root filesystem for crash protection
- Set up hardware watchdog timer

## Build for Production

### 1. Build release version:

```bash
cd /path/to/scuridappliancedemo
flutter build linux --release
```

### 2. Deploy to embedded device:

```bash
# On embedded device
sudo mkdir -p /opt/scurid
sudo chown YOUR_USERNAME:YOUR_USERNAME /opt/scurid

# From build machine
rsync -avz build/linux/x64/release/bundle/ \
  user@embedded-device:/opt/scurid/
```

### 3. Update systemd service path:

```ini
WorkingDirectory=/opt/scurid
ExecStart=/opt/scurid/scuridappliancedemo
```

## Security Hardening

### Disable unnecessary services:

```bash
sudo systemctl disable bluetooth.service
sudo systemctl disable cups.service
sudo systemctl disable avahi-daemon.service
```

### Firewall configuration:

```bash
sudo ufw enable
sudo ufw default deny incoming
sudo ufw default allow outgoing
# Allow only if needed
# sudo ufw allow 8888/tcp  # CEF debugging
```

### Read-only root filesystem:

```bash
# Edit /etc/fstab
/ ext4 ro,noatime 0 1
```

## Troubleshooting

### App doesn't start on boot:

```bash
# Check service status
sudo systemctl status scurid-kiosk.service

# View logs
sudo journalctl -u scurid-kiosk.service -f

# Check X server is running
echo $DISPLAY
ps aux | grep X
```

### Black screen:

```bash
# Check if app is running
ps aux | grep scuridappliancedemo

# Check X server logs
cat ~/.local/share/xorg/Xorg.0.log

# Try running manually
DISPLAY=:0 /opt/scurid/scuridappliancedemo
```

### CEF not initializing:

```bash
# Check dependencies
ldd /opt/scurid/scuridappliancedemo

# Check CEF libraries
ls -la /opt/scurid/lib/

# Verify permissions
chmod +x /opt/scurid/scuridappliancedemo
```

## Complete Example Configuration

Here's a full working example for a minimal embedded system:

### 1. Install base system:

```bash
sudo apt-get update
sudo apt-get install -y \
  xserver-xorg xinit openbox \
  unclutter \
  libgtk-3-0 libnss3 libgbm1 \
  network-manager
```

### 2. Create kiosk user:

```bash
sudo useradd -m -s /bin/bash kiosk
sudo usermod -a -G video,audio kiosk
```

### 3. Set up auto-login:

```bash
sudo mkdir -p /etc/systemd/system/getty@tty1.service.d
sudo tee /etc/systemd/system/getty@tty1.service.d/autologin.conf <<EOF
[Service]
ExecStart=
ExecStart=-/sbin/agetty --autologin kiosk --noclear %I \$TERM
Type=idle
EOF
```

### 4. Create .xinitrc:

```bash
sudo -u kiosk tee /home/kiosk/.xinitrc <<EOF
#!/bin/bash
xset s off
xset -dpms
xset s noblank
unclutter -idle 0.01 -root &
/opt/scurid/scuridappliancedemo &
exec openbox-session
EOF
sudo chmod +x /home/kiosk/.xinitrc
```

### 5. Auto-start X:

```bash
sudo -u kiosk tee -a /home/kiosk/.bash_profile <<EOF
if [[ -z \$DISPLAY ]] && [[ \$(tty) = /dev/tty1 ]]; then
  startx
fi
EOF
```

### 6. Deploy app:

```bash
sudo mkdir -p /opt/scurid
sudo chown kiosk:kiosk /opt/scurid
# Copy your built app to /opt/scurid/
```

### 7. Reboot:

```bash
sudo reboot
```

## Monitoring and Maintenance

### Remote access (SSH):

```bash
# Keep SSH enabled for remote management
sudo systemctl enable ssh
```

### Log rotation:

```bash
sudo nano /etc/logrotate.d/scurid
```

```
/var/log/scurid/*.log {
    daily
    rotate 7
    compress
    delaycompress
    missingok
    notifempty
}
```

### Health check script:

```bash
#!/bin/bash
# /usr/local/bin/scurid-health-check.sh

if ! pgrep -f scuridappliancedemo > /dev/null; then
    echo "App not running, restarting..."
    systemctl restart scurid-kiosk.service
fi
```

Add to crontab:

```bash
*/5 * * * * /usr/local/bin/scurid-health-check.sh
```

## References

- [Flutter Linux Deployment](https://docs.flutter.dev/deployment/linux)
- [Systemd Service Files](https://www.freedesktop.org/software/systemd/man/systemd.service.html)
- [X11 Kiosk Mode](https://wiki.archlinux.org/title/Kiosk)
- [CEF Linux Requirements](LINUX_REQUIREMENTS.md)

## Support

For issues specific to:
- **Flutter app**: Check app logs in systemd journal
- **X11/Display**: Check `/var/log/Xorg.0.log`
- **System boot**: Check `journalctl -b`
- **CEF/WebView**: Check remote debugging at `localhost:8888`
