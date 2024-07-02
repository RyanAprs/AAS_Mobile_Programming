import 'package:flutter/material.dart';
import '../models/user.dart';
import '../services/auth_service.dart';

class AuthProvider with ChangeNotifier {
  User? _user;
  final AuthService _authService = AuthService();

  User? get user => _user;

  Future<void> register(String email, String name, String password) async {
    try {
      await _authService.register(email, name, password);
    } catch (e) {
      throw e;
    }
  }

  Future<void> login(String email, String password) async {
    try {
      User loggedInUser = await _authService.login(email, password);
      _user = loggedInUser;
      notifyListeners();
    } catch (e) {
      throw e;
    }
  }

  void logout() {
    _user = null;
    notifyListeners();
  }
}
