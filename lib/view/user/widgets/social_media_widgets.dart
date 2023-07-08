import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:machine_task2/constants.dart';
import 'package:machine_task2/view/user/signup/widgets/social_media_circles.dart';

class SocialMedia extends StatelessWidget {
  String title;
  Color textColor;
  SocialMedia({super.key, required this.title, required this.textColor});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        kWidth10,
        Text(
          title,
          style: TextStyle(fontSize: 13.sp, color: textColor),
        ),
        kWidth10,
        SocialMediaCircles(
            imgLink:
                'https://firebasestorage.googleapis.com/v0/b/oneclx.appspot.com/o/asset%2Ficon%2FGicon.png?alt=media&token=77bcfaa4-662d-4503-8a0a-f31adadc9b57'),
        kWidth20,
        SocialMediaCircles(
            imgLink:
                'https://firebasestorage.googleapis.com/v0/b/oneclx.appspot.com/o/asset%2Ficon%2FFicon.png?alt=media&token=01d5ecea-1d57-4058-b958-db340ebb877f'),
        kWidth20,
        SocialMediaCircles(
            imgLink:
                'https://firebasestorage.googleapis.com/v0/b/oneclx.appspot.com/o/asset%2Ficon%2FLicon.png?alt=media&token=456aa250-b8d1-4fb0-8fa1-cddc636a7e1d'),
        kWidth20,
        SocialMediaCircles(
            imgLink:
                'https://firebasestorage.googleapis.com/v0/b/oneclx.appspot.com/o/asset%2Ficon%2FTicon.png?alt=media&token=9ea17275-989d-48c4-b982-5a1cb9866135')
      ],
    );
  }
}
