import 'package:flutter/material.dart';

import 'app/App.dart';
import './themeData/themeData.dart';


main() {

  final app = MaterialApp(
    theme: themeData,
    home: const App()
  );

  runApp(app);

}

