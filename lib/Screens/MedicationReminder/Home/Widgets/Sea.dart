import 'package:flutter/material.dart';
import 'package:pharmacy/Core/Constants/Costants.dart';



class BottommContainer extends StatelessWidget {
  const BottommContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
        'You are in a good health🥰 ',
        style: TextStyle(
          fontSize: 25,
          color: KMainColor,
          fontWeight: FontWeight.w500,
        ),
        textAlign: TextAlign.center,
      ),
      Text(
        'You are in a good health🥰 ',
        style: TextStyle(
          fontSize: 25,
          color: KMainColor,
          fontWeight: FontWeight.w500,
        ),
        textAlign: TextAlign.center,
      ),
      Text(
        'You are in a good health🥰 ',
        style: TextStyle(
          fontSize: 25,
          color: KMainColor,
          fontWeight: FontWeight.w500,
        ),
        textAlign: TextAlign.center,
      ),
      Text(
        'You are in a good health🥰 ',
        style: TextStyle(
          fontSize: 25,
          color: KMainColor,
          fontWeight: FontWeight.w500,
        ),
        textAlign: TextAlign.center,
      ),
        const Flexible(
          child: Text(
            'You are in a good health🥰 ',
            style: TextStyle(
              fontSize: 25,
              color: KMainColor,
              fontWeight: FontWeight.w500,
            ),
            textAlign: TextAlign.center,
          ),
          
        ),
      ],
    );
  }
}