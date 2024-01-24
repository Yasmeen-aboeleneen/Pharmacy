import 'package:flutter/material.dart';

import 'HomeMedBody.dart';




class HomeMedScreen extends StatelessWidget {
  const HomeMedScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(child:  HomeMedScreenBody());
  }
}