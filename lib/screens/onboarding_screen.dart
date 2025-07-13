import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import '../helper/global.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          // Spacer(),
          Lottie.asset('assets/lottie/onboard.json', height: mq.height * 0.55),
          // Spacer(flex: 5),

          // Title
          Text(
            'Ask me Anything',
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w900,
              letterSpacing: 0.5,
            ),
          ),

          // Spacing
          SizedBox(height: mq.height * 0.02),

          // Subtitle
          SizedBox(
            width: mq.width * 0.8,
            child: Text(
              "I can help you with anything, don't hesitate, just ask",
              style: TextStyle(fontSize: 13, letterSpacing: 0.5),
              textAlign: TextAlign.center,
            ),
          ),

          Spacer(),
          // dots
          Wrap(
            spacing: 10,
            children: List.generate(
              2,
              (i) => Container(
                width: 10,
                height: 8,
                decoration: BoxDecoration(
                  color: Colors.grey,
                  borderRadius: BorderRadiusGeometry.circular(5),
                ),
              ),
            ),
          ),

          Spacer(),

          // button
          ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(
              shape: StadiumBorder(),
              elevation: 0,
              backgroundColor: Colors.blue,
              minimumSize: Size(mq.width * 0.4, 50),
            ),
            child: Text(
              'Next',
              style: TextStyle(
                color: Colors.white,
                fontSize: 16,
                fontWeight: FontWeight.w800,
              ),
            ),
          ),

          Spacer(flex: 2),
        ],
      ),
    );
  }
}
