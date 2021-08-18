import 'package:flutter/material.dart';

import './appScaffold/appScaffold.dart';


main() {

  final app = MaterialApp(
    theme: ThemeData(
      primarySwatch: Colors.blueGrey
    ),
    home: const AppScaffold() 
  );

  runApp(app);

}

