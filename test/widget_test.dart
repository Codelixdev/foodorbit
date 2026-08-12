import 'package:flutter_test/flutter_test.dart';
import 'package:foodorbit/main.dart';

void main() {
  testWidgets(
    'FoodOrbit splash screen loads and navigates',
    (WidgetTester tester) async {
      await tester.pumpWidget(const FoodOrbitApp());

      // Initial splash screen.
      await tester.pump();

      expect(find.text('FoodOrbit'), findsOneWidget);

      // Complete the 2-second splash delay.
      await tester.pump(const Duration(seconds: 2));

      // Allow navigation/build to complete.
      await tester.pumpAndSettle();
    },
  );
}