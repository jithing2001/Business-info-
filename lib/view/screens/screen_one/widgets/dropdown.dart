import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:machine_task2/view/screens/screen_four/screen_four.dart';

class MyDropDown extends StatelessWidget {
  String hint;
  // String? dropdow;
  int pageNo;
  MyDropDown(
      {super.key,
      required this.list,
      required this.hint,
      required this.pageNo});

  final List<String> list;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40.h,
      width: 300.w,
      decoration: BoxDecoration(
          border: Border.all(color: const Color(0xFF3A5DB9)),
          borderRadius: BorderRadius.circular(10)),
      child: DropdownButtonFormField(
        isExpanded: true,
        decoration: const InputDecoration(border: InputBorder.none),
        hint: Align(
          alignment: Alignment.center,
          child: Text(
            hint,
            style: TextStyle(fontSize: 17.sp),
          ),
        ),
        items: list.map((e) {
          return DropdownMenuItem(
            alignment: Alignment.center,
            child: Text(e),
            value: e,
          );
        }).toList(),
        onChanged: (String? value) {
          if (pageNo == 1) {
            detail.businessCategory = value;
          } else if (pageNo == 2) {
            detail.country = value;
          } else {
            detail.state = value;
          }
        },
      ),
    );
  }
}
