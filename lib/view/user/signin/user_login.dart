import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:machine_task2/constants.dart';
import 'package:machine_task2/services/authentication.dart';
import 'package:machine_task2/view/screens/dashboard/dashboard.dart';
import 'package:machine_task2/view/user/signin/widgets/login_divider.dart';
import 'package:machine_task2/view/user/signin/widgets/login_fields.dart';
import 'package:machine_task2/view/user/signup/user_signup.dart';
import 'package:machine_task2/view/user/widgets/social_media_widgets.dart';

class UserSignIn extends StatelessWidget {
  UserSignIn({super.key});
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color(0xFF3A5DB9),
        body: Column(
          children: [
            Container(
              height: 230.h,
              width: double.infinity,
              color: const Color(0xFF3A5DB9),
              child: Padding(
                padding: EdgeInsets.all(20.sp),
                child: const Image(
                    image: NetworkImage(
                        'https://firebasestorage.googleapis.com/v0/b/oneclx.appspot.com/o/asset%2Flogo%2Fsignin.png?alt=media&token=ee8d84e8-fb08-4b1e-960a-aa1c8dbdd4ba')),
              ),
            ),
            Expanded(
              child: Container(
                width: double.infinity,
                height: double.infinity,
                decoration: BoxDecoration(
                    color: kWhite,
                    borderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(50),
                        topRight: Radius.circular(50))),
                child: Padding(
                  padding: EdgeInsets.only(left: 30.sp, right: 30.sp),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      kHeight30,
                      Text(
                        'Sign In',
                        style: TextStyle(
                            fontSize: 27.sp,
                            color: const Color(0xFF3A5DB9),
                            fontWeight: FontWeight.bold),
                      ),
                      kHeight10,
                      SignInFields(hint: 'Email', controller: emailController),
                      kHeight10,
                      SignInFields(
                        hint: 'Password',
                        controller: passwordController,
                        icon: Icons.visibility_off,
                      ),
                      Row(
                        children: [
                          IconButton(
                              onPressed: () {},
                              icon: const Icon(
                                Icons.check_box_outline_blank,
                                size: 17,
                                color: Color(0xFF3A5DB9),
                              )),
                          const Text(
                            'Remember',
                            style: TextStyle(
                                fontSize: 12, color: Color(0xFF3A5DB9)),
                          ),
                          const Spacer(),
                          const Text(
                            'Forgot Password ?',
                            style: TextStyle(
                                fontSize: 12, color: Color(0xFF3A5DB9)),
                          ),
                        ],
                      ),
                      kHeight10,
                      SizedBox(
                        width: 350.w,
                        height: 40.h,
                        child: ElevatedButton(
                            onPressed: () async {
                              if (emailController.text.isNotEmpty &&
                                  passwordController.text.isNotEmpty) {
                                Authentication()
                                    .signInWithEmailAndPassword(
                                        emailController.text,
                                        passwordController.text)
                                    .then((success) {
                                  if (success) {
                                    Get.offAll(DashBoard());
                                  } else {
                                    Get.snackbar(
                                        'Error', 'Invalid email or password');
                                  }
                                });
                              }
                            },
                            style: ElevatedButton.styleFrom(
                                backgroundColor: const Color(0xFF5F88D8),
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10))),
                            child: Text(
                              'SUBMIT',
                              style: TextStyle(
                                  fontSize: 21.sp, fontWeight: FontWeight.bold),
                            )),
                      ),
                      kHeight10,
                      const LoginDivider(),
                      kHeight10,
                      SocialMedia(
                        title: 'Login with',
                        textColor: kGrey,
                      ),
                      kHeight10,
                      const LoginDivider(),
                      kHeight10,
                      Container(
                        height: 40.h,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30),
                            color: const Color.fromARGB(255, 228, 228, 228)),
                        child: Stack(
                          children: [
                            Row(
                              children: [
                                Expanded(
                                  child: TextFormField(
                                    decoration: InputDecoration(
                                        border: InputBorder.none,
                                        hintText: 'Mobile Number',
                                        contentPadding: EdgeInsets.only(
                                            left: ScreenUtil().setSp(25.0))),
                                  ),
                                ),
                                Container(
                                  height: 40.h,
                                  width: 120.w,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(30),
                                      color: kLightBLue),
                                  child: Center(
                                    child: Text(
                                      'Request OTP',
                                      style: TextStyle(color: kBlue),
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ],
                        ),
                      ),
                      kHeight10,
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'Dont have an account?',
                            style: TextStyle(color: kGrey),
                          ),
                          kWidth10,
                          ElevatedButton(
                              onPressed: () {},
                              style: ElevatedButton.styleFrom(
                                  backgroundColor: kBlue,
                                  foregroundColor: kWhite,
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(20))),
                              child: InkWell(
                                  onTap: () => Get.to(UserSignUp()),
                                  child: const Text('Sign Up')))
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
