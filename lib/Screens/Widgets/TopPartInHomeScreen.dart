import 'package:flutter/material.dart';
import 'package:pharmacy/Core/Constants/Costants.dart';

class TopPart extends StatelessWidget {
  const TopPart({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Align(
            alignment: Alignment.topLeft,
            child: IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.menu,
                  color: KSecColor,
                  size: 35,
                )),
          ),
        ),
        const Padding(
          padding: EdgeInsets.only(left: 30),
          child: Align(
            alignment: Alignment.topLeft,
            child: Text(
              'Pharmacy',
              style: TextStyle(
                  fontSize: 40, fontWeight: FontWeight.bold, color: KSecColor),
            ),
          ),
        ),
        const Padding(
          padding: EdgeInsets.only(left: 30),
          child: Align(
            alignment: Alignment.topLeft,
            child: Text(
              'Name',
              style: TextStyle(
                  fontSize: 30, fontWeight: FontWeight.bold, color: KSecColor),
            ),
          ),
        ),
      ],
    );
  }
}
