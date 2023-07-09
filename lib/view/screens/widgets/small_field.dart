import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:machine_task2/constants.dart';

class SmallFields extends StatelessWidget {
  String hint;
  double? height;
  TextEditingController controller = TextEditingController();
  SmallFields(
      {super.key,
      required this.hint,
      required this.controller,
      this.height = 60});

  @override
  Widget build(BuildContext context) {
    return Container(
      // color: Colors.red,
      height: height!.h,
      width: 300.w,
      child: TextFormField(
        textAlign: TextAlign.center,
        controller: controller,
        keyboardType: TextInputType.emailAddress,
        expands: true,
        maxLines: null,
        cursorColor: kBlue,
        style: const TextStyle(color: Colors.grey),
        decoration: InputDecoration(
          counterStyle: const TextStyle(color: Colors.white),
          helperText: '',
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: BorderSide(
              color: kBlue,
              // width: 2.0,
            ),
          ),
          errorBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(
            10,
          )),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: BorderSide(
              color: kBlue,
              // width: 2.0,
            ),
          ),
          hintText: '  ${hint}',
          hintStyle: const TextStyle(color: Color.fromARGB(255, 60, 60, 60)),
          border: OutlineInputBorder(
            borderSide: BorderSide(
              color: kBlue,
            ),
          ),
        ),
        validator: (value) {
          if (value == null || value.isEmpty) {
            return 'this field is requierd';
          } else {
            return null;
          }
        },
      ),
    );
  }
}
