// ignore_for_file: file_names, avoid_relative_lib_imports
import 'package:flutter_test/flutter_test.dart';

import '../../lib/testWidget/TestWidget.dart';


void main() {

    testWidgets('Test Widget has a title and message', (WidgetTester tester) async {
      await tester.pumpWidget(const TestWidget(title: 'T', message: 'M'));
      final titleFinder = find.text('T');
      final messageFinder = find.text('M');
      expect(titleFinder, findsOneWidget);
      expect(messageFinder, findsOneWidget);
    });


}