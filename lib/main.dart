import 'package:flutter/material.dart';
import 'package:myfirstapp/homepage.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'My First App',
      home: HomePage(),
    );
  }
}
