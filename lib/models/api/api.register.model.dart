import 'dart:convert';
import 'dart:developer' as developer;

import 'package:flutter/material.dart';
import 'package:http/http.dart';
import 'package:myfirstapp/models/api/url.model.dart';

class RegisterRequest {
  String? _username;
  String? _email;
  String? _password;
  int? _statusCode;

  RegisterRequest(
      {String? username, String? email, String? password, int? statusCode}) {
    if (username != null) {
      this._username = username;
    }
    if (email != null) {
      this._email = email;
    }
    if (password != null) {
      this._password = password;
    }
  }

  String? get username => _username;
  set username(String? username) => _username = username;
  String? get email => _email;
  set email(String? email) => _email = email;
  String? get password => _password;
  set password(String? password) => _password = password;

  RegisterRequest.fromJson(Map<String, dynamic> json) {
    _username = json['username'];
    _email = json['email'];
    _password = json['password'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['username'] = this._username;
    data['email'] = this._email;
    data['password'] = this._password;
    return data;
  }

  Future<RegisterResponse> register(RegisterRequest registerRequest) async {
    var request = jsonEncode(registerRequest.toJson());

    Response response = await post(Uri.http(BaseAPI.base, '/user/register'),
        headers: BaseAPI.headers, body: request);

    RegisterResponse registerResponse =
        RegisterResponse.fromResponseBody(response.body, response.statusCode);

    return registerResponse;
  }
}

class RegisterResponse {
  String _message = '';
  String _id = '';
  String _username = '';
  String _email = '';
  String _token = '';
  int _statusCode = 0;

  RegisterResponse(
      {String message = '',
      String id = '',
      String username = '',
      String email = '',
      String token = '',
      int statusCode = 0}) {
    if (message != null) {
      this._message = message;
    }
    if (id != null) {
      this._id = id;
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
    if (statusCode != null) {
      this._statusCode = statusCode;
    }
  }

  String get message => _message;
  set message(String message) => _message = message;
  String get id => _id;
  set id(String id) => _id = id;
  String get username => _username;
  set username(String username) => _username = username;
  String get email => _email;
  set email(String email) => _email = email;
  String get token => _token;
  set token(String token) => _token = token;
  int get statusCode => _statusCode;
  set statusCode(int statusCode) => _statusCode = statusCode;

  RegisterResponse.fromJson(Map<String, dynamic> json) {
    _message = json['message'];
    _id = json['id'];
    _username = json['username'];
    _email = json['email'];
    _token = json['token'];
  }

  factory RegisterResponse.fromResponseBody(String body, int statusCode) {
    Map<String, dynamic> json = jsonDecode(body);

    return RegisterResponse(
        message: json['message'],
        id: json['id'],
        username: json['username'],
        email: json['email'],
        token: json['token'],
        statusCode: statusCode);
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['message'] = this._message;
    data['id'] = this._id;
    data['username'] = this._username;
    data['email'] = this._email;
    data['token'] = this._token;
    return data;
  }
}

class Register {}
