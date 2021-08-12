// ignore_for_file: file_names, avoid_relative_lib_imports
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import '../../lib/app/App.dart';
import '../../lib/appBarContent/AppBarContent.dart';
import '../../lib/app/pages.dart';



void main() {

  testWidgets('App launches and displays the page "LISÄÄ" along with app bar and bottom navigation', (WidgetTester widgetTester) async {
    await widgetTester.pumpWidget(const MaterialApp(
        home: App()
      ));
    
    final addPageFinder = find.byKey(addKey);
    expect(addPageFinder, findsOneWidget);

    final navigationBarFinder = find.byKey(navigationBarKey);
    expect(navigationBarFinder, findsOneWidget);

    final titleFinder = find.text(titleString);
    final infoFinder = find.text(infoString);
    expect(titleFinder, findsOneWidget);
    expect(infoFinder, findsOneWidget);

  });




}
