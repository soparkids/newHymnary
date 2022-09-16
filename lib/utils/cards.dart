// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class TopCards extends StatelessWidget {
  final String topCardName;
  final IconData topIcon;

  TopCards({
    required this.topCardName,
    required this.topIcon,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 8),
      child: SizedBox(
        height: 30,
        width: 140,
        child: TextButton.icon(
          onPressed: () {},
          icon: Icon(
            topIcon,
            color: Colors.purple.shade500,
          ),
          label: Text(
            topCardName,
            style: TextStyle(
              color: Colors.black.withOpacity(0.7),
            ),
          ),
          style: TextButton.styleFrom(
            backgroundColor: Colors.tealAccent,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12),
            ),
          ),
        ),
      ),
    );
  }
}

class MiddleCards extends StatelessWidget {
  final String middleTitle;
  final String middleSubTitle;

  MiddleCards({
    required this.middleTitle,
    required this.middleSubTitle,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: Container(
        width: 170,
        height: 170,
        decoration: BoxDecoration(
          color: Colors.blue,
          borderRadius: BorderRadius.circular(12),
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                middleTitle,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 22,
                  fontWeight: FontWeight.w700,
                ),
              ),
              Text(
                middleSubTitle,
                style: TextStyle(
                  color: Colors.white,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class BottomCards extends StatelessWidget {
  final String bottomImagePath;

  BottomCards({
    required this.bottomImagePath,
  });
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: Container(
        width: 170,
        height: 170,
        decoration: BoxDecoration(
          color: Colors.blue,
          borderRadius: BorderRadius.circular(12),
        ),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(12),
          child: Image.asset(
            bottomImagePath,
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}
