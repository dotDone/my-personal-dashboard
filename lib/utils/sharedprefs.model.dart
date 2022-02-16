import '../models/user.model.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'dart:async';

class UserPrefs {
  Future<User> getUser() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();

    String? _userId = prefs.getString("userId");
    String? _username = prefs.getString("username");
    String? _email = prefs.getString("email");
    String? _token = prefs.getString("token");

    String userId = '';
    String username = '';
    String email = '';
    String token = '';

    _userId != null ? userId = _userId : userId = '';
    _username != null ? username = _username : username = '';
    _email != null ? email = _email : email = '';
    _token != null ? token = _token : token = '';

    return User(
      userId: userId,
      username: username,
      email: email,
      token: token,
    );
  }

  void removeUser() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();

    await prefs.remove("userId");
    await prefs.remove("username");
    await prefs.remove("email");
    await prefs.remove("token");
    await prefs.remove("rooms");
  }

  Future<String?> getToken(args) async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    String? token = prefs.getString("token");
    return token;
  }
}
