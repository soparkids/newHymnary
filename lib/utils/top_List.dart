// ignore_for_file: prefer_const_constructors, sized_box_for_whitespace

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:rchhymn/utils/cards.dart';

class TopList extends StatelessWidget {
  //const TopList({Key? key}) : super(key: key);

  final List topListName = [
    'Devotional',
    'Igbo Hymns',
    'Sacared Songs & Solos',
    'Presbeterian RCH',
  ];

  // final List topListIcon = [
  //   Icon(Icons.pages),
  //   Icon(Icons.pages),
  //   Icon(Icons.pages),
  //   Icon(Icons.pages),
  // ];

  List<IconData> icons = [
    Icons.library_books,
    Icons.menu_book,
    Icons.book,
    Icons.menu_book
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 50,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: topListName.length,
        itemBuilder: ((context, index) {
          return TopCards(
            topCardName: topListName[index],
            topIcon: icons[index],
          );
        }),
      ),
    );
  }
}

class MiddleList extends StatelessWidget {
  List<String> middleTitles = [
    'Holo Holy Lord God Almighty',
    'Round The Lord In Glory Seated',
    'What a Friend We Have in Jesus',
  ];

  List<String> middleSubTitles = [
    'Presbyterian RCH',
    'Presbyterian RCH',
    'Sacred Songs & Solos',
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 190,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: middleTitles.length,
        itemBuilder: ((context, index) {
          return MiddleCards(
            middleTitle: middleTitles[index],
            middleSubTitle: middleSubTitles[index],
          );
        }),
      ),
    );
  }
}

class BottomList extends StatelessWidget {
  final List ImagePath = [
    'assets/teahub.io-law-wallpaper-166841.jpg',
    'assets/moon-surface-big-planet-background.jpg',
    'assets/jason-ortego-TznjqhCHR9g-unsplash.jpg'
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 190,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: ImagePath.length,
        itemBuilder: ((context, index) {
          return BottomCards(bottomImagePath: ImagePath[index]);
        }),
      ),
    );
  }
}
