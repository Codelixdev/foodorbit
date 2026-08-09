import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:foodorbit/features/splash/presentation/screens/splash_screen.dart';

void main() {
  testWidgets('FoodOrbit splash screen loads', (WidgetTester tester) async {
    await tester.pumpWidget(
      const MaterialApp(
        home: SplashScreen(),
      ),
    );

    expect(find.text('FoodOrbit'), findsOneWidget);
  });
}