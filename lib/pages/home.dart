// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:rchhymn/utils/drawer.dart';
import 'package:rchhymn/utils/top_List.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: MyDrawer(),
      appBar: AppBar(
        toolbarHeight: 15,
        elevation: 0,
        backgroundColor: Colors.transparent,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            //Drwawer and Search
            Row(
              children: [
                Builder(
                  builder: (context) {
                    return IconButton(
                      onPressed: () {
                        Scaffold.of(context).openDrawer();
                      },
                      icon: Icon(
                        Icons.menu,
                        color: Colors.purple.shade900,
                      ),
                    );
                  },
                ),
                SizedBox(width: 3),
                Flexible(
                  child: Padding(
                    padding: const EdgeInsets.only(
                      left: 10,
                      right: 10,
                    ),
                    child: SizedBox(
                      height: 45,
                      child: Container(
                        decoration: BoxDecoration(
                            color: Colors.grey.withOpacity(0.4),
                            borderRadius: BorderRadius.circular(20)),
                        child: TextField(
                          decoration: InputDecoration(
                              suffixIcon: Icon(
                                Icons.search_outlined,
                                color: Colors.purple,
                              ),
                              fillColor: Colors.red,
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(20),
                              )),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 20),
            //Top section
            Padding(
              padding: const EdgeInsets.all(10),
              child: TopList(),
            ),
            SizedBox(height: 60),
            //Middle Section Head
            Padding(
              padding: const EdgeInsets.only(left: 10, right: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Popular Hymns',
                    style: TextStyle(color: Colors.brown, fontSize: 25),
                  ),
                  SizedBox(
                    width: 90,
                    height: 40,
                    child: OutlinedButton(
                      style: OutlinedButton.styleFrom(
                          side: BorderSide(
                        color: Colors.purple,
                        width: 3,
                      )),
                      onPressed: () {},
                      child: Text(
                        'See All',
                        style: TextStyle(
                          fontSize: 16,
                          color: Colors.brown,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 20),
            //Middle Section Body
            MiddleList(),
            //Bottom section Body
            SizedBox(height: 50),
            Padding(
              padding: const EdgeInsets.only(left: 10, right: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Popular Books',
                    style: TextStyle(color: Colors.brown, fontSize: 25),
                  ),
                  SizedBox(
                    width: 90,
                    height: 40,
                    child: OutlinedButton(
                      style: OutlinedButton.styleFrom(
                          side: BorderSide(
                        color: Colors.purple,
                        width: 3,
                      )),
                      onPressed: () {},
                      child: Text(
                        'See All',
                        style: TextStyle(
                          fontSize: 16,
                          color: Colors.brown,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            BottomList(),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(items: [
        BottomNavigationBarItem(
          label: '',
          icon: Icon(Icons.home),
        ),
        BottomNavigationBarItem(
          label: '',
          icon: Icon(Icons.pages),
        ),
        BottomNavigationBarItem(
          label: '',
          icon: Icon(Icons.book),
        ),
      ]),
    );
  }
}
