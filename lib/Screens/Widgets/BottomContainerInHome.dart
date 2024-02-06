import 'package:flutter/material.dart';
import 'package:pharmacy/Core/Constants/Costants.dart';

class BottomContainerInHomeScreen extends StatelessWidget {
  const BottomContainerInHomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.bottomCenter,
      child: Expanded(
        child: Container(
          child: Row(
            children: [
              IconButton(onPressed: (){}, icon:const Icon(Icons.home,color: KSecColor,) ),
              IconButton(onPressed: (){}, icon:const Icon(Icons.home,color: KSecColor,) ),
              IconButton(onPressed: (){}, icon:const Icon(Icons.home,color: KSecColor,) ),
              IconButton(onPressed: (){}, icon:const Icon(Icons.home,color: KSecColor,) ),
            ],
          ),
        ),
      ),
    );

  }
}
