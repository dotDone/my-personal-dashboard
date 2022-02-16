import 'package:flutter/material.dart';
import 'dart:developer' as developer;

import 'package:myfirstapp/controllers/theme.controller.dart';
import 'package:myfirstapp/components/my_drawer.dart';
import 'package:myfirstapp/models/api/api.register.model.dart';
import 'package:myfirstapp/models/user.model.dart';
import 'package:myfirstapp/utils/sharedprefs.model.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({Key? key}) : super(key: key);

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  final _userSignUpKey = GlobalKey<FormState>();

  String username = '';
  String password = '';
  String email = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('S I G N   U P'),
        elevation: 0,
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              (Icons.share),
              size: 20,
            ),
          ),
          IconButton(
            onPressed: () {
              currentTheme.toggleTheme();
            },
            icon: const Icon(Icons.brightness_4_rounded),
          ),
        ],
      ),
      drawer: const MyDrawer(),
      body: Container(
        child: Form(
          key: _userSignUpKey,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisSize: MainAxisSize.max,
            children: [
              TextFormField(
                onChanged: (value) => setState(() => username = value),
                validator: (value) {
                  if (value == null || value.length <= 2) {
                    return 'Please enter a valid username';
                  }
                  return null;
                },
                decoration: const InputDecoration(
                  icon: const Icon(Icons.person),
                  labelText: 'Username',
                  labelStyle: const TextStyle(),
                  helperText: "Please enter a username",
                  hintText: 'Username',
                  prefixIcon: Icon(Icons.abc),
                  suffixIcon: const Icon(Icons.one_k),
                  filled: true,
                  fillColor: Colors.red,
                  focusColor: Colors.blue,
                  alignLabelWithHint: true,
                ),
                textAlignVertical: TextAlignVertical.center,
              ),
              TextFormField(
                onChanged: (value) => setState(() => password = value),
                validator: (value) {
                  if (value == null || value.length <= 6) {
                    return 'Please enter a valid password';
                  }
                  return null;
                },
                decoration: const InputDecoration(
                  icon: Icon(Icons.person),
                  labelText: 'Password',
                  labelStyle: TextStyle(),
                  helperText: "Please enter a password",
                  hintText: 'Password',
                  prefixIcon: Icon(Icons.abc),
                  suffixIcon: Icon(Icons.one_k),
                  filled: true,
                  fillColor: Colors.red,
                  focusColor: Colors.blue,
                  alignLabelWithHint: true,
                ),
                textAlignVertical: TextAlignVertical.center,
              ),
              TextFormField(
                onChanged: (value) => setState(() => email = value),
                validator: (value) {
                  if (value == null || value.length <= 6) {
                    return 'Please enter a valid email address';
                  }
                  return null;
                },
                decoration: const InputDecoration(
                  icon: const Icon(Icons.person),
                  labelText: 'Email address',
                  labelStyle: const TextStyle(),
                  helperText: "Please enter a email address",
                  hintText: 'Email',
                  prefixIcon: Icon(Icons.abc),
                  suffixIcon: const Icon(Icons.one_k),
                  filled: true,
                  fillColor: Colors.red,
                  focusColor: Colors.blue,
                  alignLabelWithHint: true,
                ),
                textAlignVertical: TextAlignVertical.center,
              ),
              ElevatedButton(
                onPressed: () async {
                  if (_userSignUpKey.currentState!.validate()) {
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(
                        content: Text('Processing Data'),
                      ),
                    );
                    try {
                      RegisterRequest _registerRequest = RegisterRequest(
                          username: username, email: email, password: password);
                      RegisterResponse _registerResponse =
                          await _registerRequest.register(_registerRequest);
                      if (_registerResponse.statusCode == 200) {
                        User newUser = User(
                            userId: _registerResponse.id,
                            username: _registerResponse.username,
                            email: _registerResponse.email,
                            token: _registerResponse.token);
                        await newUser.saveToPrefs(newUser);
                        ScaffoldMessenger.of(context).clearSnackBars();
                        ScaffoldMessenger.of(context).showSnackBar(
                          const SnackBar(
                            content: Text('Success!!'),
                          ),
                        );
                      }
                    } catch (e) {
                      ScaffoldMessenger.of(context).clearSnackBars();
                      ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(
                          content: Text("failed!"),
                        ),
                      );
                    }
                  } else {
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(
                        content: Text('Invalid'),
                      ),
                    );
                  }
                },
                child: const Text('Submit'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
