import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:integration_test/integration_test.dart';
import 'package:inegrate/main.dart';
// import 'dart:io';

void main() {
  IntegrationTestWidgetsFlutterBinding.ensureInitialized();

  testWidgets('No input in name field displays error validation text',
      (WidgetTester tester) async {
    await tester.pumpWidget(MyApp());

    await tester.tap(find.byType(FloatingActionButton));
    await tester.pumpAndSettle();

    expect(find.byType(MyHomePage), findsOneWidget);
    expect(find.text('Input some text!'), findsOneWidget);
  });
}


// import 'package:flutter_test/flutter_test.dart';
// import 'package:integration_test/integration_test.dart';

// import 'package:flutter_integrations_test_example/main.dart' as app;

// void main() {
//   IntegrationTestWidgetsFlutterBinding.ensureInitialized();

//   group('end-to-end test', () {
//     testWidgets('tap on the floating action button, verify counter',
//         (tester) async {
//       app.main();
//       await tester.pumpAndSettle();

//       // Verify the counter starts at 0.
//       expect(find.text('0'), findsOneWidget);

//       // Finds the floating action button to tap on.
//       final Finder fab = find.byTooltip('Increment');

//       // Emulate a tap on the floating action button.
//       await tester.tap(fab);

//       // Trigger a frame.
//       await tester.pumpAndSettle();

//       // Verify the counter increments by 1.
//       expect(find.text('1'), findsOneWidget);
//     });
//   });
// }

