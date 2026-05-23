# ACMEuniverse Mobile App

A Flutter mobile application with authentication features including Login, Registration, and Forgot Password functionality.

## Features

✅ **User Authentication**
- Login screen with email and password validation
- User registration with password confirmation
- Forgot password functionality
- Local data persistence using SharedPreferences

✅ **User Interface**
- Clean and modern Material Design UI
- Responsive layouts
- Loading indicators for async operations
- Error handling with SnackBar notifications

✅ **Security**
- Password visibility toggle
- Password confirmation on registration
- Email validation
- Minimum password length requirement (6 characters)

## Project Structure

```
lib/
├── main.dart                 # App entry point
├── screens/
│   ├── login_screen.dart          # Login UI and logic
│   ├── registration_screen.dart   # Registration UI and logic
│   └── forgot_password_screen.dart # Password reset UI and logic
└── services/
    └── auth_service.dart          # Authentication service (API integration)
```

## Getting Started

### Prerequisites

- Flutter SDK (>=3.0.0)
- Dart SDK
- Android Studio / Xcode (for emulator)

### Installation

1. **Clone the repository**
   ```bash
   git clone https://github.com/kevalacme/Acmeuniverse_Keval.git
   cd Acmeuniverse_Keval
   ```

2. **Install dependencies**
   ```bash
   flutter pub get
   ```

3. **Run the app**
   ```bash
   flutter run
   ```

## Dependencies

- **flutter**: Core Flutter framework
- **cupertino_icons**: iOS-style icons
- **http**: HTTP client for API calls
- **shared_preferences**: Local data persistence
- **intl**: Internationalization support

## Usage

### Login
1. Enter your registered email and password
2. Click "Login" button
3. Password visibility can be toggled using the eye icon

### Registration
1. Click "Sign Up" on the login screen
2. Fill in your details:
   - Full Name
   - Email Address
   - Password (minimum 6 characters)
   - Confirm Password
3. Click "Register" to create your account

### Forgot Password
1. Click "Forgot Password?" on the login screen
2. Enter your registered email
3. Click "Send Reset Link"
4. Check your email for the password reset link

## API Integration

The `auth_service.dart` file contains mock functions. To integrate with a real backend:

1. Replace the mock functions in `AuthService` class
2. Add your backend API endpoints
3. Handle authentication tokens and user sessions
4. Implement proper error handling

### Example API Integration:

```dart
static Future<bool> login(String email, String password) async {
  try {
    final response = await http.post(
      Uri.parse('https://your-api.com/auth/login'),
      headers: {'Content-Type': 'application/json'},
      body: jsonEncode({
        'email': email,
        'password': password,
      }),
    );

    if (response.statusCode == 200) {
      // Save token and user data
      return true;
    }
    return false;
  } catch (e) {
    return false;
  }
}
```

## File Descriptions

### lib/main.dart
- App entry point
- Material app configuration
- Navigation setup

### lib/screens/login_screen.dart
- User login interface
- Email and password validation
- Navigation to registration and forgot password screens

### lib/screens/registration_screen.dart
- New user account creation
- Form validation
- Password confirmation check

### lib/screens/forgot_password_screen.dart
- Password reset functionality
- Email verification
- Success/failure feedback

### lib/services/auth_service.dart
- Authentication logic
- API integration (mock implementation)
- Local storage management

## Next Steps

1. **Backend Setup**: Create backend API endpoints for authentication
2. **API Integration**: Update `auth_service.dart` with real API calls
3. **Token Management**: Implement JWT or session token handling
4. **Home Screen**: Create a home/dashboard screen after login
5. **Error Handling**: Add more robust error handling and validation
6. **Testing**: Add unit and widget tests
7. **Deployment**: Build and publish to App Store and Play Store

## Common Issues

### Dependency Issues
```bash
flutter clean
flutter pub get
```

### Build Issues
```bash
flutter clean
flutter pub cache repair
flutter pub get
flutter run
```

## Contributing

Feel free to fork this repository and submit pull requests for any improvements.

## License

This project is open source and available under the MIT License.

## Support

For issues, questions, or suggestions, please create an issue on GitHub.

---

**Happy Coding! 🚀**
