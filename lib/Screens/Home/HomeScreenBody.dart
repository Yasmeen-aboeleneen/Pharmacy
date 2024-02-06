import 'package:flutter/material.dart';
import 'package:pharmacy/Screens/Widgets/TopPartInHomeScreen.dart';

class HomeScreenBody extends StatefulWidget {
  const HomeScreenBody({super.key});

  @override
  State<HomeScreenBody> createState() => _HomeScreenBodyState();
}

class _HomeScreenBodyState extends State<HomeScreenBody> {
  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        TopPart(),
        SizedBox(
          height: 5,
        ),
        SizedBox(
          height: 10,
        ),
      ],
    );
  }
}
