
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LoginDivider extends StatelessWidget {
  const LoginDivider({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SizedBox(
            width: 100.w,
            child: const Divider(
              thickness: 3,
              color: Color.fromARGB(255, 228, 228, 228),
            ),
          ),
          const Text(
            'Or',
            style: TextStyle(
                color: Color.fromARGB(226, 214, 206, 206)),
          ),
          SizedBox(
            width: 100.w,
            child: const Divider(
              thickness: 3,
              color: Color.fromARGB(255, 228, 228, 228),
            ),
          ),
        ],
      ),
    );
  }
}