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
      body: ListView.builder(
        itemBuilder: (_, i) => Padding(
          padding: const EdgeInsets.symmetric(vertical: 0, horizontal: 4.0),
          child: ListTile(
            leading: Icon(
              Icons.question_answer,
              color: Colors.red,
              size: 30,
            ),
            title: Text(
              'Item $i',
              style: TextStyle(
                  fontSize: 20,
                  color: Colors.black26,
                  fontWeight: FontWeight.bold),
            ),
            subtitle: Text(
              'Subtitle $i',
              style: TextStyle(
                  fontSize: 12,
                  color: Colors.grey,
                  fontStyle: FontStyle.italic),
            ),
            trailing: Icon(
              Icons.bento_rounded,
              size: 16,
              color: Colors.deepOrange,
            ),
            onTap: () {},
          ),
        ),
        addAutomaticKeepAlives: false,
        cacheExtent: 100,
        itemCount: 40,
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
    );
  }
}
