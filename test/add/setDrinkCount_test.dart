// ignore_for_file: file_names, avoid_relative_lib_imports
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import '../../lib/addPage/SetDrinkCount.dart';


void main() {

  testWidgets('SetDrinkCount enables adjusting count (upward and downward)', (WidgetTester widgetTester) async {

    var drinkCount = 1;
    increaseCountMock() {
      drinkCount++;
    }
    decreaseCountMock() {
      drinkCount--;
    }
    const keyString = 'Set Drink Count';
    const key = Key(keyString);

    await widgetTester.pumpWidget(
      MaterialApp(
        home: 
        Scaffold(
          body: 
          SetDrinkCount(key: key, decreaseCount: decreaseCountMock, increaseCount: increaseCountMock, drinkCount: drinkCount)
          )
      ));

    final setCountFinder = find.byKey(key);
    expect(setCountFinder, findsOneWidget);
    expect(drinkCount, 1);

    final upIconButtonFinder = find.byKey(const Key('up'));
    await widgetTester.tap(upIconButtonFinder);
    await widgetTester.pump();
    expect(drinkCount, 2);

    final downIconButtonFinder = find.byKey(const Key('down'));
    await widgetTester.tap(downIconButtonFinder);
    await widgetTester.pump();
    expect(drinkCount, 1);


  });

}


