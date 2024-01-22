import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pharmacy/Screens/Home/HomeScreen.dart';

import '../../Core/Utils/Size_Config.dart';
import '../OnBoarding/OnBoardingScreen.dart';

class SplashScreenBody extends StatefulWidget {
  const SplashScreenBody({super.key});

  @override
  State<SplashScreenBody> createState() => _SplashScreenBodyState();
}

class _SplashScreenBodyState extends State<SplashScreenBody>
    with SingleTickerProviderStateMixin {
  AnimationController? animationController;
  Animation<double>? fadingAnimation;

  @override
  void initState() {
    super.initState();
    animationController =
        AnimationController(vsync: this, duration: const Duration(seconds: 30));
    fadingAnimation =
        Tween<double>(begin: .2, end: 1).animate(animationController!);

    animationController?.repeat(reverse: true);

    goToNextScreen();
  }

  @override
  void dispose() {
    animationController?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Stack(children: [
      Column(
        children: [
          SizedBox(
            height: SizeConfig.DefaultSize! * 10,
          ),
          Image.asset('Assets/Images/Pharmacy.png'),
          SizedBox(
            height: SizeConfig.DefaultSize! * 5,
          ),
          FadeTransition(
            opacity: fadingAnimation!,
            child: const Center(
              child: Text.rich(TextSpan(
                  text: 'Pharmacy Name',
                  style: TextStyle(
                      fontSize: 40, color: Color.fromARGB(255, 0, 0, 0)))),
            ),
          ),
        ],
      ),
    ]);
  }

  void goToNextScreen() {
    Future.delayed(const Duration(seconds: 2), () {
      Get.to(() => const HomeScreen(), transition: Transition.fade);
    });
  }
}
