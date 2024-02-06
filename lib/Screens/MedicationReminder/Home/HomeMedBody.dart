import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import '../../../Core/Constants/Costants.dart';
import '../BottomContainer.dart';
import '../../Widgets/HeaderPart.dart';
import '../../Widgets/TopCounter.dart';



class HomeMedScreenBody extends StatelessWidget {
  const HomeMedScreenBody({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Column(
        children: [
        const  HeaderPart(),
          SizedBox(
            height: 4.h,
          ),
        const  TopCounter(),
         SizedBox(height: 9.h),
        const  BottomContainer()
        ],
      ),
      floatingActionButton: InkResponse(
        onTap: (){
          
        },
        child: SizedBox(
          width: 19.w,
          height: 9.h,
          child: Card(
            shape: BeveledRectangleBorder(
              borderRadius: BorderRadius.circular(2.h)
            ),
            color: KPrimaryColor,
            child: Icon(Icons.add_outlined,size: 50.sp,color: KSecColor,),
          ),
        ),
      ),
    );
  }
}
