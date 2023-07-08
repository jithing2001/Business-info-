import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:machine_task2/constants.dart';

class SignUpFields extends StatelessWidget {
  String hint;
  IconData? icon;
  TextEditingController controller = TextEditingController();
  SignUpFields(
      {super.key,
      required this.hint,
      this.icon = null,
      required this.controller});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40.h,
      decoration:
          BoxDecoration(borderRadius: BorderRadius.circular(30), color: kWhite),
      child: TextFormField(
        controller: controller,
        decoration: InputDecoration(
            suffixIcon: IconButton(onPressed: () {}, icon: Icon(icon)),
            border: InputBorder.none,
            hintText: hint,
            contentPadding: EdgeInsets.only(
                left: ScreenUtil().setSp(25.0), top: ScreenUtil().setSp(15.0))),
      ),
    );
  }
}
