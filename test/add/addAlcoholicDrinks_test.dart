// ignore_for_file: file_names, avoid_relative_lib_imports
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import '../../lib/addPage/AddAlcoholicDrinks.dart';


void main() {

  testWidgets('Alcoholic drinks count can be adjusted between 1 and 10', (WidgetTester widgetTester) async {

    await widgetTester.pumpWidget(
      const MaterialApp(
        home: 
        Scaffold(
          body: 
          AddAlcoholicDrinks()
          )
      ));

    var setCountFinder = find.text('1');
    expect(setCountFinder, findsOneWidget);

    Finder upIconButtonFinder;
    for (var i = 2; i < maxDrinksCount + 3; i++) {
      upIconButtonFinder = find.byKey(const Key('up'));
      await widgetTester.tap(upIconButtonFinder);
      await widgetTester.pump();
      String text = i.toString();
      if (i > maxDrinksCount) {
        text = maxDrinksCount.toString();
      }
      setCountFinder = find.text(text);
      expect(setCountFinder, findsOneWidget);      
    }

    Finder downIconButtonFinder;
    for (var i = maxDrinksCount - 1; i > minDrinksCount - 3; i--) {
      downIconButtonFinder = find.byKey(const Key('down'));
      await widgetTester.tap(downIconButtonFinder);
      await widgetTester.pump();
      String text = i.toString();
      if (i < minDrinksCount) {
        text = minDrinksCount.toString();
      }
      setCountFinder = find.text(text);
      expect(setCountFinder, findsOneWidget);      
    }


  });

}