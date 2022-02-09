import 'package:flutter/material.dart';

import '../utils/test_column.dart';

class TinyBody extends StatelessWidget {
  const TinyBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.red,
      appBar: AppBar(
        leading: Icon(Icons.menu),
        title: Center(child: const Text('T I N Y')),
      ),
      drawer: Drawer(
        child: Container(
          child: ListView(
            children: [
              DrawerHeader(
                child: Center(
                  child: Text(
                    'L O G O',
                    style: TextStyle(fontSize: 30),
                  ),
                ),
              ),
              ListTile(
                title: Text('Page 1'),
                leading: Icon(Icons.home),
                onTap: () {},
              ),
              ListTile(
                  title: Text('Page 2'),
                  leading: Icon(Icons.alarm),
                  onTap: () {}),
            ],
          ),
        ),
      ),
      body: const TestColumn(
        colors: Colors.redAccent,
      ),
    );
  }
}
