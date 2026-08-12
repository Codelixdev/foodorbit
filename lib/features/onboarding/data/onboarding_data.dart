import 'package:flutter/material.dart';

import '../domain/onboarding_page.dart';

class OnboardingData {
  OnboardingData._();

  static const List<OnboardingPage> pages = [
    OnboardingPage(
      title: 'Run Your Restaurant Smarter',
      description:
          'Manage your restaurant operations from one intelligent platform.',
      icon: Icons.restaurant_rounded,
    ),
    OnboardingPage(
      title: 'Automate Daily Operations',
      description:
          'Reduce repetitive work and let FoodOrbit handle the routine tasks.',
      icon: Icons.auto_awesome_rounded,
    ),
    OnboardingPage(
      title: 'Grow With Better Insights',
      description:
          'Understand your business better with smart insights and automation.',
      icon: Icons.insights_rounded,
    ),
  ];
}