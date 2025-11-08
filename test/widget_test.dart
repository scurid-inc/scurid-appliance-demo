import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:scuridappliancedemo/main.dart';

void main() {
  testWidgets('App loads with user list', (WidgetTester tester) async {
    // Build our app and trigger a frame.
    await tester.pumpWidget(const ScuridApplianceDemo());

    // Verify that the app loads
    expect(find.byType(MaterialApp), findsOneWidget);
    
    // Verify that "Users" text is present
    expect(find.text('Users'), findsOneWidget);
  });
}
