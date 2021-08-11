// ignore_for_file: file_names, avoid_relative_lib_imports
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import '../lib/app/App.dart';
import '../lib/app/pages.dart';



void main() {

  testWidgets('User can navigate between different app pages', (WidgetTester widgetTester) async {
    await widgetTester.pumpWidget(const MaterialApp(
        home: App()
      ));
    final addPageFinder = find.byKey(addKey);
    expect(addPageFinder, findsOneWidget); 

    await widgetTester.tap(find.text('TILASTOT'));
    await widgetTester.pump();
    final statisticsPageFinder = find.byKey(statisticsKey);
    expect(statisticsPageFinder, findsOneWidget); 

    await widgetTester.tap(find.text('ASETUKSET'));
    await widgetTester.pump();
    final settingsPageFinder = find.byKey(settingsKey);
    expect(settingsPageFinder, findsOneWidget); 

  });


}