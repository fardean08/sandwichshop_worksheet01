import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:sandwichshop_worksheet1/main.dart';

void main() {
  testWidgets('Switch toggles between six-inch and footlong', (WidgetTester tester) async {
    await tester.pumpWidget(const App());

    final footlongFinder = find.widgetWithText(ElevatedButton, 'Footlong');
    final sixInchFinder = find.widgetWithText(ElevatedButton, 'Six-inch');

    // Initially, Footlong should be selected (green)
    ElevatedButton footlongButton = tester.widget(footlongFinder);
    expect((footlongButton.style?.backgroundColor?.resolve({})), Colors.green);

    // Tap Six-inch button to toggle
    await tester.tap(sixInchFinder);
    await tester.pump();

    ElevatedButton sixInchButton = tester.widget(sixInchFinder);
    footlongButton = tester.widget(footlongFinder);
    expect((sixInchButton.style?.backgroundColor?.resolve({})), Colors.green);
    expect((footlongButton.style?.backgroundColor?.resolve({})), Colors.grey.shade400);

    // Tap Footlong button to toggle back
    await tester.tap(footlongFinder);
    await tester.pump();

    footlongButton = tester.widget(footlongFinder);
    sixInchButton = tester.widget(sixInchFinder);
    expect((footlongButton.style?.backgroundColor?.resolve({})), Colors.green);
    expect((sixInchButton.style?.backgroundColor?.resolve({})), Colors.grey.shade400);
  });
}