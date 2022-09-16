import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class MyDrawer extends StatefulWidget {
  const MyDrawer({Key? key}) : super(key: key);

  @override
  State<MyDrawer> createState() => _MyDrawerState();
}

class _MyDrawerState extends State<MyDrawer> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Color.fromARGB(255, 32, 255, 80),
              Color.fromARGB(255, 100, 246, 202),
            ],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        child: ListView(
          children: [
            DrawerHeader(
              child: Center(
                child: Text(
                  'R C H',
                  style: TextStyle(fontSize: 40),
                ),
              ),
            ),
            ListTile(
              title: Text(
                'Devotional (Coming Soon)',
                style: TextStyle(color: Colors.yellow.shade900),
              ),
              leading: Icon(
                Icons.library_books,
                color: Colors.purple.shade800,
              ),
            ),
            Divider(),
            ListTile(
              title: Text(
                'Igbo Hymns (Coming Soon)',
                style: TextStyle(color: Colors.yellow.shade900),
              ),
              leading: Icon(
                Icons.menu_book,
                color: Colors.purple.shade800,
              ),
            ),
            Divider(),
            ListTile(
              title: Text(
                'SS&S (Coming Soon)',
                style: TextStyle(color: Colors.yellow.shade900),
              ),
              leading: Icon(
                Icons.book,
                color: Colors.purple.shade800,
              ),
            ),
            Divider(),
            ListTile(
              title: Text(
                'Favourite',
                style: TextStyle(color: Colors.yellow.shade900),
              ),
              leading: Icon(
                Icons.favorite,
                color: Colors.purple.shade800,
              ),
            ),
            Divider(),
            ListTile(
              title: Text(
                'Settings',
                style: TextStyle(color: Colors.yellow.shade900),
              ),
              leading: Icon(
                Icons.settings_outlined,
                color: Colors.purple.shade800,
              ),
            ),
            Divider(),
          ],
        ),
      ),
    );
  }
}
