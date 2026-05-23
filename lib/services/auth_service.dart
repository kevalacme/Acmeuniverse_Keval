import 'package:shared_preferences/shared_preferences.dart';

class AuthService {
  // Mock login function - Replace with your backend API call
  static Future<bool> login(String email, String password) async {
    try {
      // Simulate API call
      await Future.delayed(const Duration(seconds: 2));

      // Mock validation
      if (email.contains('@') && password.length >= 6) {
        // Save user data to local storage
        SharedPreferences prefs = await SharedPreferences.getInstance();
        await prefs.setString('user_email', email);
        await prefs.setBool('is_logged_in', true);
        return true;
      }
      return false;
    } catch (e) {
      return false;
    }
  }

  // Mock registration function - Replace with your backend API call
  static Future<bool> register(
    String name,
    String email,
    String password,
  ) async {
    try {
      // Simulate API call
      await Future.delayed(const Duration(seconds: 2));

      // Mock validation
      if (email.contains('@') && password.length >= 6 && name.isNotEmpty) {
        // Save user data to local storage
        SharedPreferences prefs = await SharedPreferences.getInstance();
        await prefs.setString('user_name', name);
        await prefs.setString('user_email', email);
        return true;
      }
      return false;
    } catch (e) {
      return false;
    }
  }

  // Mock forgot password function - Replace with your backend API call
  static Future<bool> forgotPassword(String email) async {
    try {
      // Simulate API call
      await Future.delayed(const Duration(seconds: 2));

      // Mock validation
      if (email.contains('@')) {
        // In real app, send password reset email
        return true;
      }
      return false;
    } catch (e) {
      return false;
    }
  }

  // Logout function
  static Future<bool> logout() async {
    try {
      SharedPreferences prefs = await SharedPreferences.getInstance();
      await prefs.setBool('is_logged_in', false);
      await prefs.remove('user_email');
      return true;
    } catch (e) {
      return false;
    }
  }

  // Check if user is logged in
  static Future<bool> isLoggedIn() async {
    try {
      SharedPreferences prefs = await SharedPreferences.getInstance();
      return prefs.getBool('is_logged_in') ?? false;
    } catch (e) {
      return false;
    }
  }
}
