import 'package:flutter/material.dart';

import '../utils/test_column.dart';

class TabletBody extends StatelessWidget {
  const TabletBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.yellow,
      appBar: AppBar(
        title: Center(child: const Text('T A B L E T')),
      ),
      body: Row(
        children: const [
          Expanded(
            child: TestColumn(
              colors: Colors.yellowAccent,
            ),
            flex: 3,
          ),
          Expanded(
            child: TestColumn(colors: Colors.yellowAccent),
            flex: 3,
          ),
        ],
      ),
    );
  }
}
