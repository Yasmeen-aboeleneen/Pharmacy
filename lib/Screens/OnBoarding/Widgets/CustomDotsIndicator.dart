import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';

import '../../../Core/Constants/Costants.dart';

class CustomDotsIndicator extends StatelessWidget {
  const CustomDotsIndicator({
    Key? key,
    required this.dotsIndex,
  }) : super(key: key);
  final double? dotsIndex;
  @override
  Widget build(BuildContext context) {
    return DotsIndicator(
      decorator: const DotsDecorator(
          color: KSecColor,
          activeColor: KPrimaryColor,
          shape: RoundedRectangleBorder(side: BorderSide(color: KMainColor))),
      dotsCount: 3,
      position: dotsIndex!.toInt(),
    );
  }
}
