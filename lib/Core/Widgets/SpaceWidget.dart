import 'package:flutter/material.dart';

import '../Utils/Size_Config.dart';

class HorizintolSpace extends StatelessWidget {
  const HorizintolSpace(this.value, {super.key});
  final double? value;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: SizeConfig.DefaultSize! * value!,
    );
  }
}

class VerticalSpace extends StatelessWidget {
  const VerticalSpace(this.value);
  final double? value;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: SizeConfig.DefaultSize! * value!,
    );
  }
}
