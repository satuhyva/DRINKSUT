// ignore_for_file: file_names, avoid_relative_lib_imports
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import '../lib/appBarContent/AppBarContent.dart';


void main() {

  testWidgets('AppBarContent displays the app title and app info', (WidgetTester widgetTester) async {
    await widgetTester.pumpWidget(const MaterialApp(
        home: AppBarContent()
      ));
    final titleFinder = find.text(titleString);
    final infoFinder = find.text(infoString);
    expect(titleFinder, findsOneWidget);
    expect(infoFinder, findsOneWidget);
  });




}



