import 'dart:async';

import 'package:rchhymn/Hymn.dart';

class HymnManager{

  Stream<List<Hymn>> get hymnListView =>
      Stream.fromFuture(Hymn.browse());

  Stream<List<Hymn>> filteredCollection({query}) =>
      Stream.fromFuture(Hymn.browse(query: query));   
  }
