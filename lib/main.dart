import 'package:flutter/material.dart';

import 'features/splash/presentation/screens/splash_screen.dart';

void main() {
  runApp(const FoodOrbitApp());
}

class FoodOrbitApp extends StatelessWidget {
  const FoodOrbitApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'FoodOrbit',
      theme: ThemeData.dark(),
      home: const SplashScreen(),

    );
  }
}