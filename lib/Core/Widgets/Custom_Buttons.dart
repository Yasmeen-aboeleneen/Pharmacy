import 'package:flutter/material.dart';

import '../Constants/Costants.dart';
import '../Utils/Size_Config.dart';
import 'SpaceWidget.dart';

class CustomButtonWithIcon extends StatelessWidget {
  const CustomButtonWithIcon(
      {super.key,
      required this.text,
      required this.iconData,
      this.onTap,
      this.color});
  final String text;
  final IconData? iconData;
  final VoidCallback? onTap;
  final Color? color;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 60,
        width: SizeConfig.ScreenWidth,
        decoration: BoxDecoration(
            shape: BoxShape.rectangle,
            color: KMainColor,
            borderRadius: BorderRadius.circular(8),
            border: Border.all(color: KMainColor)),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              iconData,
              color: color,
            ),
            const HorizintolSpace(2),
            Expanded(
              child: Text(
                textAlign: TextAlign.justify,
                text,
                maxLines: 3,
                style:
                    const TextStyle(fontSize: 15, fontWeight: FontWeight.w500),
              ),
            )
          ],
        ),
      ),
    );
  }
}
