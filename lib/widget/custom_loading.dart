import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class CustomLoading extends StatelessWidget {
  const CustomLoading({super.key});

  @override
  Widget build(BuildContext context) {
    return Lottie.asset('assets/lottie/chatbot.json', width: 200);
  }
}
