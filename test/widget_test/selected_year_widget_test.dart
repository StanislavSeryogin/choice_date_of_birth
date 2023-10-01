import 'package:choice_date_of_birth/pages/summary_of_selection/widgets/selected_year_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  testWidgets('displays the provided text with the correct style',
      (WidgetTester tester) async {
    const testText = '2023';

    await tester.pumpWidget(
      const MaterialApp(
        home: Scaffold(
          body: SelectedYearWidget(text: testText),
        ),
      ),
    );

    await tester.pumpAndSettle();

    final textFinder = find.text(testText);

    expect(textFinder, findsOneWidget);

    final Text textWidget = tester.widget(textFinder) as Text;
    expect(textWidget.style!.fontWeight, FontWeight.w700);
    expect(textWidget.style!.fontSize, 35.0);
  });
}
