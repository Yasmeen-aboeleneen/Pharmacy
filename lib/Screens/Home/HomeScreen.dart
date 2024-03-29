import 'package:flutter/material.dart';
import 'package:pharmacy/Core/Constants/Costants.dart';
import 'package:pharmacy/Screens/Widgets/BottomContainerInHome.dart';
import 'HomeScreenBody.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Scaffold(
        backgroundColor: KMainColor,
        bottomNavigationBar: BottomContainerInHomeScreen(),
        body: HomeScreenBody(),
      ),
    );
  }
}
