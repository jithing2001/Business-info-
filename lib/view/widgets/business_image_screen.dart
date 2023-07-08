import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';
import 'package:machine_task2/constants.dart';
import 'package:machine_task2/controllers/logo_controller.dart';
import 'package:machine_task2/view/screens/screen_four/screen_four.dart';
import 'package:machine_task2/view/screens/widgets/bottom_content.dart';

import '../screens/widgets/top_content.dart';

class BusinessImagesScreenWidget extends StatelessWidget {
  BusinessImagesScreenWidget(
      {super.key,
      required this.lg,
      required this.swippingClass,
      required this.text,
      required this.progressLevel,
      this.subText = '',
      required this.pageNo,
      required this.progressValue});

  final LogoController lg;
  Widget swippingClass;
  String text;
  String? subText;
  String progressLevel;
  int? pageNo;
  double progressValue;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          kHeight10,
          TopContents(
              imgPath:
                  'https://firebasestorage.googleapis.com/v0/b/oneclx.appspot.com/o/asset%2Ficon%2FBD.png?alt=media&token=88d7acab-112e-47e1-b6b6-9b7c0f94b91a',
              title: 'ADD BUSINESS IMAGES',
              progressLevel: progressLevel,
              progressValue: progressValue),
          kHeight10,
          Text(
            'ADD PHOTOS OF YOUR BUSINESS',
            style: TextStyle(fontSize: 16.sp, fontWeight: FontWeight.bold),
          ),
          kHeight10,
          Text(
            "Business photos create your customer's first",
            style: TextStyle(fontSize: 16.sp),
          ),
          kHeight5,
          Text(
            'impression of your company. The best',
            style: TextStyle(fontSize: 16.sp),
          ),
          kHeight5,
          Text(
            'photos send a message to customers about',
            style: TextStyle(fontSize: 16.sp),
          ),
          kHeight5,
          Text(
            "the company's value, create brand loyalty",
            style: TextStyle(fontSize: 16.sp),
          ),
          kHeight5,
          Text(
            'and sign a more professional appearance',
            style: TextStyle(fontSize: 16.sp),
          ),
          kHeight30,
          SubText(
            text: text,
          ),
          subText == ''
              ? Text(
                  'the website is effective and creative',
                  style: TextStyle(fontSize: 16.sp),
                )
              : Text(
                  subText!,
                  style: TextStyle(fontSize: 12.sp),
                ),
          kHeight10,
          InkWell(
            onTap: () async {
              lg.imagepath!.value =
                  await LogoController().getImage(source: ImageSource.gallery);
              if (pageNo == 1) {
                detail.imageStore1 = lg.imagepath!.value;
              } else if (pageNo == 2) {
                detail.imageStore2 = lg.imagepath!.value;
              } else {
                detail.imageStore3 = lg.imagepath!.value;
              }

            },
            child: Container(
              height: 35.h,
              width: 130.w,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20), color: Colors.blue),
              child: Center(
                  child: Text(
                'Upload Logo',
                style: TextStyle(
                    color: kWhite,
                    fontWeight: FontWeight.w400,
                    letterSpacing: 1),
              )),
            ),
          ),
          kHeight10,
          Obx(() => Container(
                height: 115,
                width: 115,
                decoration: const BoxDecoration(
                    color: Color.fromARGB(255, 223, 220, 220)),
                child: lg.imagepath?.value == ''
                    ? Center(
                        child: Text(
                        'IMAGE',
                        style: TextStyle(
                            fontSize: 20.sp,
                            fontWeight: FontWeight.bold,
                            color: const Color.fromARGB(255, 123, 123, 123)),
                      ))
                    : Image.file(
                        File(lg.imagepath!.value),
                        fit: BoxFit.cover,
                      ),
              )),
          BottomContent(
            swipingClass: swippingClass,
            isValidationNeeded: false,
          )
        ],
      ),
    );
  }
}

class SubText extends StatelessWidget {
  SubText({super.key, required this.text});
  String text;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          text,
          style: TextStyle(fontSize: 15.sp),
        ),
        kHeight5,
      ],
    );
  }
}
