// ignore_for_file: prefer_const_constructors

import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:rchhymn/utils/drawer.dart';
import 'package:rchhymn/utils/hymn_cards.dart';

class HymnPage extends StatelessWidget {
  const HymnPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: MyDrawer(),
      appBar: AppBar(
        backgroundColor: Colors.tealAccent,
        elevation: 0,
        leading: Builder(
          builder: (context) {
            return IconButton(
              onPressed: () {
                Scaffold.of(context).openDrawer();
              },
              icon: Icon(
                Icons.menu,
                color: Colors.purple,
              ),
            );
          },
        ),
        title: Text(
          'Presbyterian RCH',
          style: TextStyle(
            color: Colors.brown,
          ),
        ),
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.arrow_back,
              color: Colors.purple,
            ),
          ),
        ],
      ),
      body: Container(
          child: ListView.builder(
              shrinkWrap: true,
              itemCount: 4,
              itemBuilder: ((context, index) {
                return HymnCards();
              }))),
    );
  }
}
