import 'package:flutter/material.dart';

import '../../data/onboarding_data.dart';
import '../widgets/onboarding_page_view.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  final PageController _pageController = PageController();

  int _currentPage = 0;

  final pages = OnboardingData.pages;

  bool get _isLastPage => _currentPage == pages.length - 1;

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  void _nextPage() {
    if (_isLastPage) {
      _getStarted();
      return;
    }

    _pageController.nextPage(
      duration: const Duration(milliseconds: 350),
      curve: Curves.easeOut,
    );
  }

  void _skip() {
    if (_isLastPage) {
      return;
    }

    _pageController.animateToPage(
      pages.length - 1,
      duration: const Duration(milliseconds: 350),
      curve: Curves.easeOut,
    );
  }

  void _getStarted() {
    // Login screen next feature.
    //
    // Navigation intentionally left empty for now
    // because LoginScreen has not been created yet.
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF0B0B0D),
      body: SafeArea(
        child: Column(
          children: [
            Align(
              alignment: Alignment.topRight,
              child: Padding(
                padding: const EdgeInsets.only(
                  top: 16,
                  right: 20,
                ),
                child: TextButton(
                  onPressed: _skip,
                  child: Text(
                    _isLastPage ? '' : 'Skip',
                    style: const TextStyle(
                      color: Colors.white70,
                      fontSize: 14,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              ),
            ),

            Expanded(
              child: OnboardingPageView(
                controller: _pageController,
                pages: pages,
                onPageChanged: (index) {
                  setState(() {
                    _currentPage = index;
                  });
                },
              ),
            ),

            Padding(
              padding: const EdgeInsets.fromLTRB(28, 10, 28, 28),
              child: Row(
                children: [
                  Row(
                    children: List.generate(
                      pages.length,
                      (index) {
                        final active = index == _currentPage;

                        return AnimatedContainer(
                          duration: const Duration(milliseconds: 250),
                          margin: const EdgeInsets.only(right: 7),
                          width: active ? 24 : 7,
                          height: 7,
                          decoration: BoxDecoration(
                            color: active
                                ? const Color(0xFFFF8A00)
                                : Colors.white24,
                            borderRadius: BorderRadius.circular(20),
                          ),
                        );
                      },
                    ),
                  ),

                  const Spacer(),

                  AnimatedContainer(
                    duration: const Duration(milliseconds: 250),
                    child: GestureDetector(
                      onTap: _nextPage,
                      child: Container(
                        height: 58,
                        padding: EdgeInsets.symmetric(
                          horizontal: _isLastPage ? 24 : 0,
                        ),
                        width: _isLastPage ? 150 : 58,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(18),
                          gradient: const LinearGradient(
                            colors: [
                              Color(0xFFFFA726),
                              Color(0xFFFF6D00),
                            ],
                          ),
                          boxShadow: const [
                            BoxShadow(
                              color: Color(0x33FF7800),
                              blurRadius: 18,
                              offset: Offset(0, 8),
                            ),
                          ],
                        ),
                        child: Center(
                          child: _isLastPage
                              ? const Text(
                                  'Get Started',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 15,
                                    fontWeight: FontWeight.w700,
                                  ),
                                )
                              : const Icon(
                                  Icons.arrow_forward_rounded,
                                  color: Colors.white,
                                ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}