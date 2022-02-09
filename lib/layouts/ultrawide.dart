import 'package:flutter/material.dart';

import '../utils/test_column.dart';

class UltraWideBody extends StatelessWidget {
  const UltraWideBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green,
      appBar: AppBar(title: Center(child: const Text('U L T R A W I D E'))),
      body: Row(
        children: const [
          Expanded(child: TestColumn(colors: Colors.greenAccent), flex: 3),
          Expanded(child: TestColumn(colors: Colors.greenAccent), flex: 3),
          Expanded(child: TestColumn(colors: Colors.greenAccent), flex: 3),
          Expanded(child: TestColumn(colors: Colors.greenAccent), flex: 3),
        ],
      ),
    );
  }
}
