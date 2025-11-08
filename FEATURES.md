# Scurid Appliance Demo - Features

## Current Implementation

### Landing Page
- **Device Name Display**: Shows device name (from first user) in the AppBar title
- **User List**: Displays a scrollable list of users with:
  - Avatar (generated from UI Avatars API)
  - User name
  - Email address
  - Visual card design with hover effects

### User Interaction
- **Click to View**: Clicking any user card opens a webview popup
- **WebView Popup**: 
  - Full-screen dialog (80% width/height)
  - Shows user's name in header
  - Displays their associated website
  - Loading indicator while page loads
  - Close button to dismiss

### Mock Data
Currently includes 6 mock users:
1. John Smith - MacBook Pro → flutter.dev
2. Sarah Johnson - Linux Workstation → github.com
3. Michael Chen - Ubuntu Desktop → scurid.com
4. Emily Davis - iMac → dart.dev
5. David Wilson - Fedora Laptop → pub.dev
6. Jessica Brown - Mac Mini → material.io

## File Structure

```
lib/
├── main.dart                    # App entry point
├── models/
│   └── user.dart               # User data model
├── data/
│   └── mock_users.dart         # Mock user data
├── pages/
│   └── home_page.dart          # Landing page with user list
└── widgets/
    ├── user_card.dart          # User list item widget
    └── webview_dialog.dart     # Webview popup dialog
```

## Technologies Used

- **flutter_inappwebview**: For cross-platform webview support (macOS, Linux)
- **Material Design 3**: Modern UI components
- **UI Avatars API**: Auto-generated user avatars

## Running the App

```bash
# macOS
flutter run -d macos

# Linux  
flutter run -d linux
```

## Next Steps

Possible enhancements:
- Connect to real Scurid Appliance API
- Add user authentication
- Implement device management features
- Add user search/filter functionality
- Support multiple devices per user
