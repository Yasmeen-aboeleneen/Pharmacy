import 'package:flutter/material.dart';
import 'package:pharmacy/Screens/Widgets/TopPartInHomeScreen.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../../Core/Constants/Costants.dart';
import '../../Core/Widgets/Custom_Buttons.dart';

class HomeScreenBody extends StatefulWidget {
  const HomeScreenBody({super.key});

  @override
  State<HomeScreenBody> createState() => _HomeScreenBodyState();
}

class _HomeScreenBodyState extends State<HomeScreenBody> {
  @override
  Widget build(BuildContext context) {
    return 
     
     
       Column(
        children: [
          const TopPart(),
          const SizedBox(
            height: 5,
          ),
          // const SearchBarr(),
          const SizedBox(
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
                      iconData:  FontAwesomeIcons.camera ,
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
      
    );
  }
}
