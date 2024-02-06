import 'package:flutter/material.dart';
import 'package:pharmacy/Core/Constants/Costants.dart';
import 'OnBoardingScreenBody.dart';

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
        child: Scaffold(
      backgroundColor: KMainColor,
      body: OnBoardingBody(),
    ));
  }
}
