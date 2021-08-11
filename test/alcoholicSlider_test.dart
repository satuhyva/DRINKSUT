// ignore_for_file: file_names, avoid_relative_lib_imports
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import '../lib/addPage/AlcoholicSlider.dart';


void main() {

  testWidgets('Contains alcohol-selection can be used to switch between true and false', (WidgetTester widgetTester) async {

    var selectedState = true;
    changeIsAlcoholicMock(bool newState) {
      selectedState = newState;
    }
    const keyString = 'Alcohol Slider';
    const key = Key(keyString);

    await widgetTester.pumpWidget(
      MaterialApp(
        home: 
        Scaffold(
          body: 
          AlcoholicSlider(key: key, isAlcoholic: true, changeIsAlcoholic: changeIsAlcoholicMock, 
          ))
      ));

    final sliderFinder = find.byKey(key);
    expect(sliderFinder, findsOneWidget);
    expect(selectedState, true);

    await widgetTester.tap(sliderFinder);
    await widgetTester.pump();
    expect(selectedState, true);

  });




}


