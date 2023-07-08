import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SignInFields extends StatelessWidget {
  String hint;
  IconData? icon;
  TextEditingController controller = TextEditingController();
  SignInFields({super.key, required this.hint, this.icon = null,required this.controller});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40.h,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30),
          color: const Color.fromARGB(255, 228, 228, 228)),
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
