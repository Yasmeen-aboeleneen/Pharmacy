import 'package:flutter/material.dart';
import 'package:pharmacy/Core/Constants/Costants.dart';

class BottomContainer extends StatelessWidget {
  const BottomContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return const Flexible(
      child: Text(
        'You are in a good health🥰 ',
        style: TextStyle(
          fontSize: 25,
          color: KPrimaryColor,
          fontWeight: FontWeight.w500,
        ),
        textAlign: TextAlign.center,
      ),
    );
  }
}
