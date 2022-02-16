import 'package:flutter/material.dart';

class SignInRequest {
  String? _username;
  String? _password;

  SignInRequest({String? username, String? password}) {
    if (username != null) {
      this._username = username;
    }
    if (password != null) {
      this._password = password;
    }
  }

  String? get username => _username;
  set username(String? username) => _username = username;
  String? get password => _password;
  set password(String? password) => _password = password;

  SignInRequest.fromJson(Map<String, dynamic> json) {
    _username = json['username'];
    _password = json['password'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['username'] = this._username;
    data['password'] = this._password;
    return data;
  }
}

class SignInResponse {
  String? _sId;
  String? _username;
  String? _token;

  SignInResponse({String? sId, String? username, String? token}) {
    if (sId != null) {
      this._sId = sId;
    }
    if (username != null) {
      this._username = username;
    }
    if (token != null) {
      this._token = token;
    }
  }

  String? get sId => _sId;
  set sId(String? sId) => _sId = sId;
  String? get username => _username;
  set username(String? username) => _username = username;
  String? get token => _token;
  set token(String? token) => _token = token;

  SignInResponse.fromJson(Map<String, dynamic> json) {
    _sId = json['_id'];
    _username = json['username'];
    _token = json['token'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['_id'] = this._sId;
    data['username'] = this._username;
    data['token'] = this._token;
    return data;
  }
}
