import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:foodorbit/features/onboarding/presentation/screens/onboarding_screen.dart';
import 'package:foodorbit/features/splash/presentation/screens/splash_screen.dart';

void main() {
  testWidgets('FoodOrbit splash screen loads and navigates', (
    WidgetTester tester,
  ) async {
    await tester.pumpWidget(
      const MaterialApp(
        home: SplashScreen(),
      ),
    );

    // Splash is visible.
    expect(find.text('FoodOrbit'), findsOneWidget);

    // Allow the 2-second splash timer to complete.
    await tester.pump(const Duration(seconds: 2));

    // Allow the replacement route to build.
    await tester.pump();

    // Onboarding screen should now be visible.
    expect(find.byType(OnboardingScreen), findsOneWidget);
  });
}