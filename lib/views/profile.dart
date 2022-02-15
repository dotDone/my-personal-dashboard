import 'package:flutter/material.dart';
import 'package:myfirstapp/controllers/theme.controller.dart';
import 'package:myfirstapp/components/my_drawer.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('M Y   P R O F I L E'),
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
