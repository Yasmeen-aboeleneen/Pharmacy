import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:get/utils.dart';
import 'package:pharmacy/Core/Constants/Costants.dart';
import 'package:pharmacy/Screens/MedicationReminder/Home/HomeMed.dart';
import 'package:sizer/sizer.dart';

class BottomContainerInHomeScreen extends StatelessWidget {
  const BottomContainerInHomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 8.h,
      decoration: const BoxDecoration(
          color: KSecColor,
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(30), topRight: Radius.circular(30))),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              FontAwesomeIcons.house,
              color: KMainColor,
            ),
          ),
          IconButton(
            onPressed: () {
              Get.to(() => const HomeMedScreen(),
                  transition: Transition.rightToLeft,
                  duration: const Duration(milliseconds: 500));
            },
            icon: const Icon(
              FontAwesomeIcons.clock,
              color: KMainColor,
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(
              FontAwesomeIcons.camera,
              color: KMainColor,
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(
              FontAwesomeIcons.cartShopping,
              color: KMainColor,
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.search,
              color: KMainColor,
              size: 35,
            ),
          ),
        ],
      ),
    );
  }
}
