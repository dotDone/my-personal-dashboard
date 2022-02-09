import 'package:flutter/material.dart';

import '../utils/test_column.dart';

class MobileBody extends StatelessWidget {
  const MobileBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.amber,
      appBar: AppBar(
        actions: [Icon(Icons.share)],
        title: const Text('M Y   A P P'),
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
        colors: Colors.amberAccent,
      ),
    );
  }
}
