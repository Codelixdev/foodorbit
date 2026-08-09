import 'package:flutter_test/flutter_test.dart';
import 'package:foodorbit/main.dart';

void main() {
  testWidgets('FoodOrbit app loads', (WidgetTester tester) async {
    await tester.pumpWidget(const FoodOrbitApp());

    await tester.pump();

    expect(find.text('FoodOrbit'), findsOneWidget);
  });
}