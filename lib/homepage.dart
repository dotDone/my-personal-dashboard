import 'package:flutter/material.dart';
import 'package:myfirstapp/themes.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('M Y   A P P'),
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
      drawer: Drawer(
        elevation: 2,
        child: ListView(
          children: [
            DrawerHeader(
              child: ListView(children: [
                IconButton(
                  icon: Icon(
                    Icons.home,
                  ),
                  onPressed: () {},
                  iconSize: 40,
                ),
              ]),
            ),
            ListTile(
              leading: Icon(
                Icons.book,
                size: 20,
              ),
              title: const Text('Page 1'),
              subtitle: const Text('It\'s the first page'),
              trailing: Icon(
                Icons.arrow_right,
                size: 20,
              ),
              onTap: () {},
            ),
            ListTile(
              leading: Icon(
                Icons.book,
                size: 20,
              ),
              title: const Text('Page 2'),
              subtitle: const Text('It\'s the second page'),
              trailing: Icon(
                Icons.arrow_right,
                size: 20,
              ),
              onTap: () {},
            ),
          ],
        ),
      ),
      body: Container(
        child: Placeholder(),
      ),
    );
  }
}
