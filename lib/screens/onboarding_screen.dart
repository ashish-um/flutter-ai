import 'package:ai_assistant/model/onboard.dart';
import 'package:ai_assistant/screens/home_screen.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import '../helper/global.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final c = PageController();

    final list = [
      Onboard(
        title: 'Ask me Anything',
        subtitle: "I can help you with anything, don't hesitate, just ask",
        lottie: 'onboard',
        buttonText: 'Next',
      ),
      Onboard(
        title: "Your Smart AI Assistant",
        subtitle: "Cutting Edge AI at your fingertips",
        lottie: 'onboard2',
        buttonText: "Finish",
      ),
    ];

    return Scaffold(
      body: PageView.builder(
        controller: c,
        itemCount: list.length,
        itemBuilder: (ctx, ind) {
          return Column(
            children: [
              // Spacer(),
              Lottie.asset(
                'assets/lottie/${list[ind].lottie}.json',
                height: mq.height * 0.55,
              ),
              // Spacer(flex: 5),

              // Title
              Text(
                list[ind].title,
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
                  list[ind].subtitle,
                  style: TextStyle(fontSize: 13, letterSpacing: 0.5),
                  textAlign: TextAlign.center,
                ),
              ),

              Spacer(),
              // dots
              Wrap(
                spacing: 10,
                children: List.generate(
                  list.length,
                  (i) => Container(
                    width: i == ind ? 15 : 10,
                    height: 8,
                    decoration: BoxDecoration(
                      color: i == ind ? Colors.blue : Colors.grey,
                      borderRadius: BorderRadiusGeometry.circular(5),
                    ),
                  ),
                ),
              ),

              Spacer(),

              // button
              ElevatedButton(
                onPressed: () {
                  if (ind != list.length - 1) {
                    c.nextPage(
                      duration: Duration(microseconds: 1600),
                      curve: Curves.ease,
                    );
                  } else {
                    Navigator.of(context).pushReplacement(
                      MaterialPageRoute(builder: (_) => const HomeScreen()),
                    );
                  }
                },
                style: ElevatedButton.styleFrom(
                  shape: StadiumBorder(),
                  elevation: 0,
                  backgroundColor: list[ind].lottie != 'onboard'
                      ? Colors.green.shade600
                      : Colors.blue,
                  minimumSize: Size(mq.width * 0.4, 50),
                ),
                child: Text(
                  list[ind].buttonText,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                    fontWeight: FontWeight.w800,
                  ),
                ),
              ),

              Spacer(flex: 2),
            ],
          );
        },
      ),
    );
  }
}
