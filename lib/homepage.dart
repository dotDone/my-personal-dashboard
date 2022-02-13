import 'package:flutter/material.dart';

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
        ],
      ),
      drawer: Drawer(
        backgroundColor: Colors.grey,
        elevation: 2,
        child: ListView(
          children: [
            DrawerHeader(
              child: ListView(children: [
                IconButton(
                  icon: Icon(
                    Icons.home,
                    color: Colors.black,
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
                color: Colors.blue[200],
              ),
              title: const Text('Page 1'),
              subtitle: const Text('It\'s the first page'),
              trailing: Icon(
                Icons.arrow_right,
                size: 20,
                color: Colors.grey[400],
              ),
              onTap: () {},
            ),
            ListTile(
              leading: Icon(
                Icons.book,
                size: 20,
                color: Colors.blue[200],
              ),
              title: const Text('Page 2'),
              subtitle: const Text('It\'s the second page'),
              trailing: Icon(
                Icons.arrow_right,
                size: 20,
                color: Colors.grey[400],
              ),
              onTap: () {},
            ),
          ],
        ),
      ),
      body: Container(
        color: Colors.deepPurple[200],
        child: Placeholder(),
      ),
    );
  }
}
