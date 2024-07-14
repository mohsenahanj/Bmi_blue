
import 'package:flutter/material.dart';
import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:lottie/lottie.dart';
import 'package:page_transition/page_transition.dart';
import 'package:bmi_blue/homepage.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AnimatedSplashScreen(
        splash: Lottie.asset('assets/animation_lmuo07nv.json'),
        splashIconSize: 250,
        backgroundColor: Colors.blueAccent,
        pageTransitionType: PageTransitionType.rightToLeftWithFade,
        nextScreen: const HomePage());
  }
}