import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';
import 'package:machine_task2/constants.dart';
import 'package:machine_task2/view/screens/screen_one/screen_one.dart';
import 'package:machine_task2/view/user/signin/user_login.dart';
import 'package:machine_task2/view/user/widgets/social_media_widgets.dart';

import '../../../services/authentication.dart';
import 'widgets/signup_fields.dart';

class UserSignUp extends StatefulWidget {
  UserSignUp({super.key});

  @override
  State<UserSignUp> createState() => _UserSignUpState();
}

class _UserSignUpState extends State<UserSignUp> {
  TextEditingController emailController = TextEditingController();

  TextEditingController passwordController = TextEditingController();

  TextEditingController nameController = TextEditingController();
  final formkey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color(0xFF3A5DB9),
        body: SingleChildScrollView(
          child: Form(
            key: formkey,
            child: Column(
              children: [
                Container(
                    height: 270.h,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: kWhite,
                      borderRadius: const BorderRadius.only(
                          bottomLeft: Radius.circular(50),
                          bottomRight: Radius.circular(50)),
                    ),
                    child: const Image(
                        image: NetworkImage(
                            'https://firebasestorage.googleapis.com/v0/b/oneclx.appspot.com/o/asset%2Flogo%2Fsignup.png?alt=media&token=c09e67aa-d7f9-4b6f-8195-8cde196f9a93'))),
                Padding(
                  padding: EdgeInsets.only(
                      left: ScreenUtil().setSp(25.0),
                      right: ScreenUtil().setSp(25.0),
                      top: ScreenUtil().setSp(10.0)),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Sign Up',
                        style: TextStyle(
                            fontSize: 27.sp,
                            color: kWhite,
                            fontWeight: FontWeight.bold),
                      ),
                      kHeight10,
                      SignUpFields(
                        hint: 'User Name',
                        controller: nameController,
                      ),
                      SignUpFields(
                          hint: 'Email ID', controller: emailController),
                      SignUpFields(
                          isSuffix: true,
                          hint: 'Password',
                          controller: passwordController),
                      kHeight20,
                      Center(
                          child: SizedBox(
                        width: 350.w,
                        height: 40.h,
                        child: ElevatedButton(
                            onPressed: () async {
                              if (formkey.currentState!.validate()) {
                                Get.dialog(Center(
                                  child: LoadingAnimationWidget.waveDots(
                                      color: Colors.white, size: 50),
                                ));
                                if (emailController.text.isNotEmpty &&
                                    passwordController.text.isNotEmpty) {
                                  await Authentication()
                                      .registerWithEmailAndPassword(
                                          emailController.text,
                                          passwordController.text)
                                      .then((success) {
                                    if (success) {
                                      Get.offAll(const ScreenOne());
                                    } else {
                                      Get.snackbar(
                                          'Error', 'Invalid email or password');
                                    }
                                  });
                                }
                              } else {}
                            },
                            style: ElevatedButton.styleFrom(
                                backgroundColor: const Color(0xFF5F88D8),
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10))),
                            child: Text(
                              'CREATE ACCOUNT',
                              style: TextStyle(
                                  fontSize: 21.sp, fontWeight: FontWeight.bold),
                            )),
                      )),
                      kHeight20,
                      SizedBox(
                        width: double.infinity,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            SizedBox(
                              width: 100.w,
                              child: Divider(
                                thickness: 3,
                                color: kWhite,
                              ),
                            ),
                            Text(
                              'Or',
                              style: TextStyle(color: kWhite),
                            ),
                            SizedBox(
                              width: 100.w,
                              child: Divider(
                                thickness: 3,
                                color: kWhite,
                              ),
                            ),
                          ],
                        ),
                      ),
                      kHeight10,
                      SocialMedia(title: 'Sign Up with', textColor: kWhite),
                      kHeight20,
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'Already have an account?',
                            style: TextStyle(color: kWhite),
                          ),
                          kWidth10,
                          ElevatedButton(
                              onPressed: () {},
                              style: ElevatedButton.styleFrom(
                                  backgroundColor: kWhite,
                                  foregroundColor: kBlue,
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(20))),
                              child: InkWell(
                                  onTap: () => Get.to(UserSignIn()),
                                  child: const Text('Sign In')))
                        ],
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
