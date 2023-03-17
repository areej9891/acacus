import 'dart:async';

import 'package:acacus_app/onboarding_screen.dart';

import 'package:flutter/material.dart';

import 'helpers/consts.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  startTime() async {
    var duration = const Duration(seconds: 3);
    return Timer(duration, navigationPage);
  }

  void navigationPage() {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => const OnboardingScreen()));
  }

  @override
  void initState() {
    startTime();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: mainColor,
      body: Center(
          child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 8),
        child: Image.asset("assets/whiteLogo.png"),
      )),
    );
  }
}
