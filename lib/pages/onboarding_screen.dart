import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import '../widgets/onboarding_card.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  static final PageController _pageController = PageController(initialPage: 0);

  @override
  Widget build(BuildContext context) {
    List<Widget> _onBoardingScreens = [
      OnboardingCard(
        image: "assets/hci1.jpg",
        title: "Crave it?",
        subtitle: "We deliver it!",
        description: "food at your doorstep",
      ),
      OnboardingCard(
        image: "assets/hci2.png",
        title: "Unleash your creativity",
        subtitle: "Build your perfect plate!",
        description: "your way",
      ),
      OnboardingCard(
        image: "assets/hci3.jpg",
        title: "Join us today!",
        subtitle: "",
        description: "Sign up now!",
      ),
    ];

    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 50.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Expanded(
              child: PageView(
                controller: _pageController,
                children: _onBoardingScreens,
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 18.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SmoothPageIndicator(
                    controller: _pageController,
                    count: _onBoardingScreens.length,
                    effect: WormEffect(
                      dotHeight: 20,
                      dotWidth: 8,
                      activeDotColor: Colors.red,
                      dotColor: Colors.grey,
                    ),
                  ),
                  FloatingActionButton(
                    onPressed: () {
                      if (_pageController.page == 2) {
                        Navigator.pushNamed(context, '/signup'); // Navigate to sign-up page
                      } else {
                        _pageController.nextPage(
                          duration: const Duration(milliseconds: 300),
                          curve: Curves.linear,
                        );
                      }
                    },
                    shape: const CircleBorder(),
                    backgroundColor: Colors.red[400], // Button color
                    child: Icon(
                      Icons.arrow_forward, // Always show the forward arrow
                      size: 30, // Icon size
                      color: Colors.white, // Icon color
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
