import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:machine_task2/constants.dart';
import 'package:machine_task2/view/screens/dashboard/dashboard.dart';
import 'package:machine_task2/view/user/signup/user_signup.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) async {
      await Future.delayed(const Duration(seconds: 1));
      final userLogin = FirebaseAuth.instance.currentUser;
      if (userLogin == null) {
        Get.off(UserSignUp());
      } else {
        Get.off(DashBoard());
      }
    });
    return SafeArea(
      child: Scaffold(
        backgroundColor: kWhite,
        body: Column(
          children: [
            SizedBox(
              height: 550.h,
              width: double.infinity,
              child: const Image(
                image: AssetImage('assets/images/splash.png'),
                fit: BoxFit.fill,
              ),
            ),
            kHeight30,
            SizedBox(
              width: 300.w,
              height: 40.h,
              child: ElevatedButton(
                  onPressed: () {
                    Get.off(UserSignUp());
                  },
                  style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xFF5F88D8),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30))),
                  child: Text(
                    'Get Start Now',
                    style:
                        TextStyle(fontSize: 21.sp, fontWeight: FontWeight.bold),
                  )),
            )
          ],
        ),
      ),
    );
  }
}
