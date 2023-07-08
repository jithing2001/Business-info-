import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:machine_task2/constants.dart';

class SocialMediaCircles extends StatelessWidget {
  String imgLink;
  SocialMediaCircles({super.key, required this.imgLink});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 32.h,
      width: 38.w,
      decoration:
          BoxDecoration(color: kWhite, borderRadius: BorderRadius.circular(20)),
      child: Padding(
        padding: EdgeInsets.all(8.0.sp),
        child: Image(height: 5.h, width: 5.w, image: NetworkImage(imgLink)),
      ),
    );
  }
}