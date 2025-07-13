import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Spacer(),
          Lottie.asset('assets/lottie/onboard.json'),
          Spacer(flex: 5),
        ],
      ),
    );
  }
}
