import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SmallFields extends StatelessWidget {
  String hint;
  TextEditingController controller = TextEditingController();
  SmallFields({super.key, required this.hint, required this.controller});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40.h,
      width: 300.w,
      decoration: BoxDecoration(
          border: Border.all(
            color: const Color(0xFF3A5DB9),
          ),
          borderRadius: BorderRadius.circular(10)),
      child: TextFormField(
        controller: controller,
        validator: (value) {
          if (value == '') {
            return 'this form is requierd';
          }
          return null;
        },
        textAlign: TextAlign.center,
        decoration: InputDecoration(
            border: InputBorder.none,
            hintText: hint,
            contentPadding: const EdgeInsets.only(top: 5),
            hintStyle: TextStyle(fontSize: 17.sp)),
      ),
    );
  }
}
