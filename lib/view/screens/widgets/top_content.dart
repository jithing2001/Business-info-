
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:machine_task2/constants.dart';
import 'package:machine_task2/view/screens/screen_one/widgets/progress_bar.dart';

class TopContents extends StatelessWidget {
  String imgPath;
  String title;
  String progressLevel;
  double progressValue;
  TopContents(
      {super.key,
      required this.imgPath,
      required this.title,
      required this.progressLevel,required this.progressValue});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircleAvatar(
              radius: 40.r,
              backgroundImage: NetworkImage(imgPath),
            ),
          ],
        ),
        kHeight20,
        Text(
          title,
          style: TextStyle(
              fontSize: 25.sp,
              color: const Color(0xFF3A5DB9),
              fontWeight: FontWeight.bold),
        ),
        kHeight20,
        ProgressB(progressLevel: progressLevel,progressValue:progressValue ),
      ],
    );
  }
}
