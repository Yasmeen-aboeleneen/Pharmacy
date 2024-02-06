import 'package:flutter/material.dart';
import 'package:pharmacy/Core/Constants/Costants.dart';

import 'SplashScreenBody.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Scaffold(backgroundColor: KMainColor, body: SplashScreenBody()),
    );
  }
}
