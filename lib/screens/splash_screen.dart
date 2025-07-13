import 'package:ai_assistant/screens/home_screen.dart';
import 'package:ai_assistant/screens/onboarding_screen.dart';
import 'package:ai_assistant/widget/custom_loading.dart';
import 'package:flutter/material.dart';

import '../helper/global.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Future.delayed(Duration(seconds: 3), () {
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(builder: (_) => const OnboardingScreen()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    // Initializing device size
    mq = MediaQuery.sizeOf(context);
    return Scaffold(
      body: SizedBox(
        width: double.maxFinite,
        child: Column(
          children: [
            Spacer(),
            Card(
              color: Colors.transparent,
              shadowColor: Colors.transparent,
              child: Image.asset(
                'assets/images/logo.png',
                width: mq.width * .2,
              ),
            ),

            CustomLoading(),
            Spacer(),
          ],
        ),
      ),
    );
  }
}
