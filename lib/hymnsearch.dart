import 'package:flutter/material.dart';
import 'Hymn.dart';
import 'HymnDetail.dart';
import 'HymnMan.dart';

class HymnSearchDelegate extends SearchDelegate {
  // ignore: prefer_typing_uninitialized_variables
  final messages;
  
  //List<String> filterName = new List();
  


  HymnSearchDelegate({this.messages});
  
  @override
  List<Widget> buildActions(BuildContext context) {
    return [
      IconButton(icon: const Icon(Icons.clear),
      onPressed: () {
        query ='';
        showSuggestions(context);
      },)
    ];
  }

  @override
  Widget buildLeading(BuildContext context) {
    return IconButton(icon: const Icon(Icons.arrow_back),
    onPressed: () {
      close(context, null); 
     } ,
    );
  }

  @override
  Widget buildResults(BuildContext context) {
    if (query.isEmpty ){
      return const Center(
        child: Text("Type Hymn Number or title"),);
    } 
 
   HymnManager manager = HymnManager();
  return StreamBuilder<List<Hymn>>(
        stream: manager.filteredCollection(query: query),
        builder:
        // ignore: missing_return
        (BuildContext context, AsyncSnapshot snapshot) {
           switch (snapshot.connectionState){
             case ConnectionState.none:
             case ConnectionState.waiting:
             case ConnectionState.active:
                return const Center(child: CircularProgressIndicator());
             case ConnectionState.done: 
               var messages =snapshot.data; 
                return ListView.separated(
        itemCount: messages.length,
        separatorBuilder: (context, index) => const Divider(),
        itemBuilder: (BuildContext context, int index) {
          Hymn message = messages[index];
           
      
          return ListTile(
            title: Text(message.c1title),
            isThreeLine: true,
            
            leading: CircleAvatar(
              child: Text(message.c0_id),
            ),
            subtitle: Text(message.c4lyrics,
            maxLines: 4,
            overflow: TextOverflow.ellipsis,),
            onTap: () {
              Navigator.push(context, 
              MaterialPageRoute(
                builder: (BuildContext context ) => 
                HymnDetail(message.c0_id, message.c4lyrics),
              
              ),
              ); 
            },
          );
        },
                );
       }
        },
      )
      ;
}

  @override
  Widget buildSuggestions(BuildContext context) {
  
    if (query.isEmpty ){
      return const Center(
        child: Text("Type Hymn Number or title"),);
    }
 
   HymnManager manager = HymnManager();
  return StreamBuilder<List<Hymn>>(
        stream: manager.filteredCollection(query: query),
        builder:
        // ignore: missing_return
        (BuildContext context, AsyncSnapshot snapshot) {
           switch (snapshot.connectionState){
             case ConnectionState.none:
             case ConnectionState.waiting:
             case ConnectionState.active:
                return const Center(child: CircularProgressIndicator());
             case ConnectionState.done: 
               var messages =snapshot.data; 
                return ListView.separated(
        itemCount: messages.length,
        separatorBuilder: (context, index) => const Divider(),
        itemBuilder: (BuildContext context, int index) {
          Hymn message = messages[index];
           
      
          return ListTile(
            title: Text(message.c1title),
            isThreeLine: true,
            
            leading: CircleAvatar(
              child: Text(message.c0_id),
            ),
            subtitle: Text(message.c4lyrics,
            maxLines: 4,
            overflow: TextOverflow.ellipsis,),
            onTap: () {
              Navigator.push(context, 
              MaterialPageRoute(
                builder: (BuildContext context ) => 
                HymnDetail(message.c0_id, message.c4lyrics),
              
              ),
              ); 
            },
          );
        },
                );
       }
        },
      )
      ;
}
  
  }

