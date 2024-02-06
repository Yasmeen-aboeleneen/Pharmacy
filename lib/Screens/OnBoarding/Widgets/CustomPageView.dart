import 'package:flutter/material.dart';
import 'CustomPageViewItem.dart';

class CustomPageView extends StatelessWidget {
  const CustomPageView({
    Key? key,
    this.pageController,
  }) : super(key: key);
  final PageController? pageController;
  @override
  Widget build(BuildContext context) {
    return PageView(
      controller: pageController,
      children: const [
        CustomPageViewItem(
          image: 'Assets/Images/Pharmacy.png',
          title: 'Shopping',
          subtitle: ' Explore top organic fruits',
        ),
        CustomPageViewItem(
          image: 'Assets/Images/Pharmacy.png',
          title: 'Delivery on the way',
          subtitle: 'Get your order by speed delivery',
        ),
        CustomPageViewItem(
          image: 'Assets/Images/Pharmacy.png',
          
          title: 'Delivery Arrived',
          subtitle: 'Order is arrived at your place',
        )
      ],
    );
  }
}
