import '../domain/onboarding_page.dart';

class OnboardingData {
  OnboardingData._();

  static const List<OnboardingPage> pages = [
    OnboardingPage(
      title: 'Run Your Restaurant Smarter',
      description:
          'Manage your restaurant operations from one intelligent workspace.',
      icon: 'restaurant',
    ),
    OnboardingPage(
      title: 'Automate Repetitive Work',
      description:
          'Simplify everyday tasks and spend more time growing your restaurant.',
      icon: 'auto_awesome',
    ),
    OnboardingPage(
      title: 'Grow With AI Insights',
      description:
          'Turn your restaurant data into smarter decisions and better operations.',
      icon: 'insights',
    ),
  ];
}