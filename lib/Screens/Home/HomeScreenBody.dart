import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:pharmacy/Core/Constants/Costants.dart';
import 'package:pharmacy/Core/Widgets/Custom_Buttons.dart';
import 'package:pharmacy/Screens/Widgets/SearchBar.dart';
import 'package:pharmacy/Screens/Widgets/TopPartInHomeScreen.dart';
import '../MedicationReminder/Home/HomeMed.dart';

class HomeScreenBody extends StatefulWidget {
  const HomeScreenBody({super.key});

  @override
  State<HomeScreenBody> createState() => _HomeScreenBodyState();
}

class _HomeScreenBodyState extends State<HomeScreenBody> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(
              Icons.menu,
              color: KSecColor,
            ),
            label: 'More',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              FontAwesomeIcons.basketShopping,
              color: KSecColor,
            ),
            label: 'Shopping Cart',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              FontAwesomeIcons.house,
              color: KSecColor,
            ),
            label: 'Home',
          ),
        ],
      ),
      body: Column(
        children: [
        const  TopPart(),
      const    SizedBox(
            height: 5,
          ),
        const  SearchBarr(),
       const   SizedBox(
            height: 10,
          ),
          Row(
            children: [
              Flexible(
                  flex: 1,
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 8),
                    child: CustomButtonWithIcon(
                      onTap: () {
                        setState(() {
                          goToHomeMedScreen() {}
                          ;
                        });
                      },
                      text: 'Medicine Reminder',
                      iconData: FontAwesomeIcons.clock,
                      color: KSecColor,
                    ),
                  )),
              Flexible(
                  flex: 1,
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 8),
                    child: CustomButtonWithIcon(
                      text: 'Upload Prescription',
                      iconData: FontAwesomeIcons.camera,
                      color: KSecColor,
                    ),
                  ))
            ],
          )
        ],
      ),
    );
  }

  void goToHomeMedScreen() {
    Get.to(
      () => const HomeMedScreen(),
    );
  }
}
