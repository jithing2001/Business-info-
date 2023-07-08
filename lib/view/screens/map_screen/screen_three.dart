import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:machine_task2/constants.dart';
import 'package:machine_task2/view/screens/map_screen/widgets/map.dart';
import 'package:machine_task2/view/screens/screen_four/screen_four.dart';
import 'package:machine_task2/view/screens/widgets/bottom_content.dart';

import 'package:machine_task2/view/screens/widgets/top_content.dart';

class ScreenThree extends StatelessWidget {
   const ScreenThree({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
          decoration: const BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.center,
                  colors: [Color(0xFF3A5DB9), Colors.white])),
          child: Scaffold(
            backgroundColor: Colors.transparent,
            body: SingleChildScrollView(
              child: Column(
                children: [
                  kHeight20,
                  TopContents(
                      imgPath:
                          'https://firebasestorage.googleapis.com/v0/b/oneclx.appspot.com/o/asset%2Ficon%2FGL.png?alt=media&token=9f42df4f-44dd-4395-81b6-5f1c38257596',
                      title: 'Google Location',
                      progressLevel: '2',progressValue: 0.3),
                  kHeight15,
                  Text(
                    'PIN YOUR GOOGLE LOCATION',
                    style:
                        TextStyle(fontSize: 16.sp, fontWeight: FontWeight.bold),
                  ),
                  kHeight15,
                  Text(
                    'Add Map Location',
                    style: TextStyle(fontSize: 16.sp),
                  ),
                  kHeight5,
                  Text(
                    'For Your Business',
                    style: TextStyle(fontSize: 16.sp),
                  ),
                  kHeight10,
                  const MapScreen(),
                  kHeight10,
                  SizedBox(
                    height: 15.h,
                    width: 200,
                    child: Obx(() => Text(
                          loc.address.value == ''
                              ? 'Select Your Business Location'
                              : loc.address.value,
                          overflow: TextOverflow.ellipsis,
                          
                        )),
                        
                  ),
                  
                  BottomContent(
                    swipingClass: const ScreenFour(),
                    isValidationNeeded: false,
                  )
                ],
              ),
            ),
          )),
    );
  }
}
