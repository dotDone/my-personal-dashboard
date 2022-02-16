import 'dart:async';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class User {
  String _userId = '';
  String _username = '';
  String _email = '';
  String _token = '';

  User(
      {required String userId,
      required String username,
      required String email,
      required String token}) {
    if (userId != null) {
      this._userId = userId;
    }
    if (username != null) {
      this._username = username;
    }
    if (email != null) {
      this._email = email;
    }
    if (token != null) {
      this._token = token;
    }
  }

  String get userId => _userId;
  set userId(String userId) => _userId = userId;
  String get username => _username;
  set username(String username) => _username = username;
  String get email => _email;
  set email(String email) => _email = email;
  String get token => _token;
  set token(String token) => _token = token;

  User.fromJson(Map<String, dynamic> json) {
    _userId = json['userId'];
    _username = json['username'];
    _email = json['email'];
    _token = json['token'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['userId'] = this._userId;
    data['username'] = this._username;
    data['email'] = this._email;
    data['token'] = this._token;
    return data;
  }

  Future<void> saveToPrefs(User user) async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();

    await prefs.setString('userId', this.userId);
    await prefs.setString("username", this.username);
    await prefs.setString("email", this.email);
    await prefs.setString("token", this.token);
  }
}
