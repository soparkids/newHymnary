import 'package:flutter/material.dart';

//import 'Hymn.dart';

class HymnDetail extends StatelessWidget {
  //final String c1title;
  final String c0_Id;
  final String c4lyrics;

   // ignore: use_key_in_widget_constructors
   const HymnDetail( this.c0_Id, this.c4lyrics);
  
 @override
 Widget build(BuildContext context) {
   return Scaffold(
     appBar: AppBar(title: Text('RCH $c0_Id')),
     body: ListView.builder(
       itemCount: 1,
        itemBuilder: (BuildContext context, int index) {
          return Card(  child: Text(c4lyrics,
     style: const TextStyle(color: Colors.black, 
            
            fontSize: 16.0,
            letterSpacing: 2.0),
        
            ),
            );
        }),
        );
}
}
