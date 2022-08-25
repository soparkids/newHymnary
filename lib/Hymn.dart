import 'dart:convert';
import 'package:flutter/services.dart';
import 'package:json_annotation/json_annotation.dart';

part 'Hymn.g.dart';

@JsonSerializable()
class Hymn{
  final String c0_id;
  final String c1title;
  
  final String c4lyrics;

  Hymn(this.c1title,this.c0_id, this.c4lyrics);

 factory Hymn.fromJson(Map<String,dynamic> json) =>
       _$HymnFromJson(json);

static Future<List<Hymn>> browse({query}) async {
        String content = await rootBundle.loadString('data/rchhymn.json');
        
        
        List collection = json.decode(content);

        Iterable<Hymn> hymns = 
        collection.map((_) => Hymn.fromJson(_));

        if (query !=null && query.isNotEmpty ) {
           hymns = hymns.where((message) => message.c0_id.toLowerCase().contains(query) || message.c1title.toLowerCase().contains(query) ,);
        }

       return hymns.toList(); 
       
      }

}


