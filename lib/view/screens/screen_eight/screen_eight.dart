import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';
import 'package:machine_task2/constants.dart';
import 'package:machine_task2/services/business_service.dart';
import 'package:machine_task2/view/screens/congrats_screen/congrats_screen.dart';
import 'package:machine_task2/view/screens/screen_four/screen_four.dart';
import 'package:machine_task2/view/screens/widgets/top_content.dart';

class ScreenEight extends StatelessWidget {
  ScreenEight({super.key});
  String img1 = '';
  String? img2 = '';
  String? img3 = '';

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
              body: Column(
                children: [
                  kHeight20,
                  TopContents(
                      imgPath:
                          'https://firebasestorage.googleapis.com/v0/b/oneclx.appspot.com/o/asset%2Ficon%2Fpub.png?alt=media&token=36a32f5b-6b53-428c-97f9-3210dc5cc22c',
                      title: 'PUBLISH',
                      progressLevel: '6',
                      progressValue: 0.8),
                  kHeight110,
                  Text(
                    'EASILY IN MINUTES',
                    style: TextStyle(
                        fontSize: 30.sp,
                        fontWeight: FontWeight.bold,
                        letterSpacing: 2),
                  ),
                  kHeight20,
                  Text(
                    'Create a website for your business',
                    style:
                        TextStyle(fontSize: 19.sp, fontWeight: FontWeight.w400),
                  ),
                  kHeight20,
                  InkWell(
                    onTap: () {
                      Get.to(const CongratsScreen());
                    },
                    child: Container(
                      height: 40.h,
                      width: 130.w,
                      decoration: BoxDecoration(
                          color: const Color(0xFF3A5DB9),
                          borderRadius: BorderRadius.circular(30)),
                      child: Center(
                        child: InkWell(
                          onTap: () async {
                            log('tapping');
                            await getImgLink(img1!, img2!, img3!);
                            log('tapped');
                            Get.to(const CongratsScreen());
                          },
                          child: Text(
                            'PUBLISH',
                            style: TextStyle(
                                fontSize: 22.sp,
                                color: kWhite,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                    ),
                  )
                ],
              ),
            )));
  }

  Future<void> getImgLink(String image1, String image2, String image3) async {
    Get.dialog(Center(
      child: LoadingAnimationWidget.waveDots(color: Colors.white, size: 50),
    ));
    log('method');
    if (detail.imageStore1 != null) {
      image1 = await BusinessService().uploadImage(detail.imageStore1!);
    }
    if (detail.imageStore2 != null) {
      image2 = await BusinessService().uploadImage(detail.imageStore2!);
    }
    if (detail.imageStore3 != null) {
      image3 = await BusinessService().uploadImage(detail.imageStore3!);
      await BusinessService().addBusiness(image1, image2, image3);
    }
  }
}
