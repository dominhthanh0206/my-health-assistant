import 'dart:async';

import 'package:flutter/material.dart';
import 'package:my_health_assistant/src/styles/colors.dart';
import 'package:my_health_assistant/src/widgets/splash/widget/onboarding.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(
        const Duration(seconds: 3),
        () => Navigator.pushReplacement(context,
            MaterialPageRoute(builder: (context) => const OnBoardingPage())));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset('assets/images/splash.png'),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 30.0),
            child: Text('Welcome to \nMy Health Assistant!👋',
                style: TextStyle(
                    fontSize: 32,
                    fontWeight: FontWeight.bold,
                    color: MyColors.mainColor)),
          ),
          const SizedBox(height: 20),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 40.0),
            child: Text(
              'The best online doctor appointment & consultation app of century for your health and medical needs',
              style: TextStyle(fontSize: 16),
              textAlign: TextAlign.center,
            ),
          )
        ],
      ),
    );
  }
}
