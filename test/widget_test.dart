// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility in the flutter_test package. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:ecom_login_flutter/main.dart';
import 'package:ecom_login_flutter/widgets/custom_button.dart';

void main() {
  testWidgets('LoginScreen shows login form and navigates on login',
      (WidgetTester tester) async {
    // Build the app and trigger a frame.
    await tester.pumpWidget(const MyApp());

    // Verify that the login form is shown.
    expect(find.text('Login'), findsOneWidget); // Adjust if needed

    // Enter the login credentials.
    await tester.enterText(find.byType(TextField).first, 'username');
    await tester.enterText(find.byType(TextField).last, 'password');

    // Tap the login button.
    await tester
        .tap(find.byType(CustomButton)); // Adjust if your button is different.

    // Wait for animations to finish and async operations to settle.
    await tester.pumpAndSettle();

    // Verify that the HomeScreen is displayed.
    expect(find.text('Home Screen'),
        findsOneWidget); // Adjust based on your HomeScreen UI
  });
}
