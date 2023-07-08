import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:machine_task2/constants.dart';

class FinalButtons extends StatelessWidget {
  String title;
  FinalButtons({super.key, this.title = 'DASHBOARD'});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 30.h,
      width: 130.w,
      decoration: BoxDecoration(
          color: const Color(0xFF3A5DB9), borderRadius: BorderRadius.circular(30)),
      child: Center(
        child: Text(
          title,
          style: TextStyle(
              fontSize: 16.sp, color: kWhite, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
