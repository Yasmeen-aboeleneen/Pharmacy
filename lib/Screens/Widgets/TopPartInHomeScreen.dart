import 'package:flutter/material.dart';

import '../../Core/Constants/Costants.dart';
import '../../Core/Utils/Size_Config.dart';

class TopPart extends StatelessWidget {
  const TopPart({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: SizeConfig.DefaultSize! * 12,
      width: SizeConfig.ScreenWidth,
      decoration: const BoxDecoration(
          gradient: LinearGradient(colors: [
            KPrimaryColor,
            KSecColor,
            KThirdColor,
            KFourthColor,
            KFifthColor,
          ]),
          borderRadius: BorderRadiusDirectional.only(
              bottomStart: Radius.circular(15),
              bottomEnd: Radius.circular(15))),
      child: const Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Center(
                child: Text(
                  'Pharmacy Name',
                  style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      color: KMainColor),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
