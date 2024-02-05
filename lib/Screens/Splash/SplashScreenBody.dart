import 'dart:async';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:pharmacy/Screens/Home/HomeScreen.dart';
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
        builder: (builder) => const HomeScreen(),
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
              child: Text('Sally',
                  style: TextStyle(
                      fontSize: 40,
                      color: Color.fromARGB(255, 255, 255, 255)))),
          Lottie.network(
              'https://lottie.host/cc72f2c4-6fde-4ad8-8e6c-8d089298a873/FGj6YMCGnB.json'),
          SizedBox(
            height: SizeConfig.DefaultSize! * 3,
          ),
          const Center(
              child: Text('Pharmacy',
                  style: TextStyle(
                      fontSize: 40,
                      color: Color.fromARGB(255, 255, 255, 255)))),
        ],
      ),
    ]);
  }
}
