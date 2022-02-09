import 'package:flutter/material.dart';

import '../utils/test_column.dart';

class TinyBody extends StatelessWidget {
  const TinyBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.red,
      appBar: AppBar(title: Center(child: const Text('T I N Y'))),
      body: const TestColumn(
        colors: Colors.redAccent,
      ),
    );
  }
}
