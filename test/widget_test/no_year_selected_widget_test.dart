import 'package:choice_date_of_birth/pages/summary_of_selection/widgets/no_years_selected_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  testWidgets(
      'displays the "No Year Selected" text with correct style and container properties',
      (WidgetTester tester) async {
    await tester.pumpWidget(
      const MaterialApp(
        home: Scaffold(
          body: NoYearSelectedWidget(),
        ),
      ),
    );

    await tester.pump(const Duration(milliseconds: 500));

    final textFinder = find.text('No Year Selected');
    expect(textFinder, findsOneWidget);

    final Text textWidget = tester.widget(textFinder) as Text;
    expect(textWidget.style!.fontWeight, FontWeight.w700);
    expect(textWidget.style!.fontSize, 35.0);
    expect(textWidget.style!.color, Colors.white);

    final containerFinder = find.byType(Container);
    final Container containerWidget =
        tester.widget(containerFinder) as Container;
    expect(containerWidget.color, Colors.black54);
  });
}
