import 'dart:async';
import 'package:flutter/material.dart';
import '../../../../config/responsive.dart';
import '../../../core/resources/color.dart';
import '../../onboardinig/views/onboarding.dart';
//import '../../onboardinig/views/thirdscreen.dart';


class SplashScreenPage extends StatefulWidget {
  const SplashScreenPage({super.key});

  @override
  State<SplashScreenPage> createState() => _SplashscreenPageState();
}

class _SplashscreenPageState extends State<SplashScreenPage> {
  @override
  void initState() {
    super.initState();
    Timer(
      const Duration(seconds: 6),
      () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => 
            //prefOnboarding.getBool("isOnboardingShown")==true?
            // const Thirdscreen() :
              const OnBordingScreen(),
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: blue,
      body: SizedBox(
        width: screenWidth,
        height: screenHight,
        child: Center(child: Image.asset("images/logo.png")),
        )
      );
    
  }
}