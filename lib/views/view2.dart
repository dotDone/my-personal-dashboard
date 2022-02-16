import 'package:flutter/material.dart';
import 'package:myfirstapp/controllers/theme.controller.dart';
import 'package:myfirstapp/components/my_drawer.dart';

class View2 extends StatelessWidget {
  const View2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('V I E W 2'),
        elevation: 0,
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(
              (Icons.share),
              size: 20,
            ),
          ),
          IconButton(
            onPressed: () {
              currentTheme.toggleTheme();
            },
            icon: Icon(Icons.brightness_4_rounded),
          ),
        ],
      ),
      drawer: MyDrawer(),
      body: Container(
        child: Placeholder(),
      ),
    );
  }
}
