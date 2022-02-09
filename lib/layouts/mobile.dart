import 'package:flutter/material.dart';

import '../utils/test_column.dart';

class MobileBody extends StatelessWidget {
  const MobileBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.amber,
      appBar: AppBar(
        title: Center(child: const Text('M O B I L E')),
      ),
      body: const TestColumn(
        colors: Colors.amberAccent,
      ),
    );
  }
}
