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
          image: 'Assets/Images/pic3.jpg',
          title: 'Shopping',
          subtitle: ' Explore what you want',
        ),
        CustomPageViewItem(
          image: 'Assets/Images/pic4.jpg',
          title: 'Delivery on the way',
          subtitle: 'Get your order by speed delivery',
        ),
        CustomPageViewItem(
          image: 'Assets/Images/pic5.jpg',
          title: 'Delivery Arrived',
          subtitle: 'Order is arrived at your place',
        )
      ],
    );
  }
}
