import 'package:flutter/material.dart';
import 'package:rchhymn/hymnlist.dart';
import 'package:rchhymn/pages/home.dart';

void main() => runApp(const RchApp());

class RchApp extends StatelessWidget {
  static const primaryColor = Colors.white;

  const RchApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Presbyterian',
      theme: ThemeData(
          primaryColor: primaryColor,
          scaffoldBackgroundColor: primaryColor,
          canvasColor: Colors.black,
          textTheme: Theme.of(context).textTheme.copyWith(
              caption: const TextStyle(
                color: Colors.black,
              ),
              subtitle1: const TextStyle(
                  fontFamily: 'Garamond',
                  fontSize: 17.0,
                  color: Colors.blueAccent))),
      home: HomePage(),
    );
  }
}
//const HymnList( title: 'Presbyterian RCH',)

