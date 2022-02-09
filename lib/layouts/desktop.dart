import 'package:flutter/material.dart';

import '../utils/test_column.dart';

class DesktopBody extends StatelessWidget {
  const DesktopBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightGreen,
      appBar: AppBar(title: Center(child: const Text('D E S K T O P'))),
      body: Row(
        children: const [
          Expanded(child: TestColumn(colors: Colors.lightGreenAccent), flex: 3),
          Expanded(child: TestColumn(colors: Colors.lightGreenAccent), flex: 3),
          Expanded(child: TestColumn(colors: Colors.lightGreenAccent), flex: 3),
        ],
      ),
    );
  }
}
