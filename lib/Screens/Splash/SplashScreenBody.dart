import 'dart:async';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:pharmacy/Screens/OnBoarding/OnBoardingScreen.dart';
import '../../Core/Utils/Size_Config.dart';

class SplashScreenBody extends StatefulWidget {
  const SplashScreenBody({super.key});

  @override
  State<SplashScreenBody> createState() => _SplashScreenBodyState();
}

class _SplashScreenBodyState extends State<SplashScreenBody>
    with SingleTickerProviderStateMixin {
  @override
  void initState() {
    super.initState();
    Timer(const Duration(seconds: 8), () {
      Navigator.of(context).pushReplacement(MaterialPageRoute(
        builder: (builder) => const OnBoardingScreen(),
      ));
    });
  }

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Stack(children: [
      Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            height: SizeConfig.DefaultSize! * 3,
          ),
          const Center(
              child: Text('Pharmacy Name',
                  style: TextStyle(
                      fontSize: 35, color: Color.fromARGB(255, 98, 140, 210)))),
          Lottie.network(
              'https://lottie.host/f72a7172-a1c9-4b04-9f31-e92bb4f4b9ec/j297Y0HUVC.json'),
          SizedBox(
            height: SizeConfig.DefaultSize! * 3,
          ),
        ],
      ),
    ]);
  }
}
