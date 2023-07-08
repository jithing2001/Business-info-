import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:machine_task2/constants.dart';
import 'package:machine_task2/controllers/detail_controller.dart';
import 'package:machine_task2/view/screens/screen_five/screen_five.dart';
import 'package:machine_task2/view/screens/screen_four/widgets/field.dart';
import 'package:machine_task2/view/screens/widgets/bottom_content.dart';
import 'package:machine_task2/view/screens/widgets/top_content.dart';

class ScreenFour extends StatefulWidget {
  const ScreenFour({super.key});

  @override
  State<ScreenFour> createState() => _ScreenFourState();
}
  DetailController detail=DetailController();

class _ScreenFourState extends State<ScreenFour> {
  final GlobalKey<FormState> _fKey = GlobalKey();


  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.center,
              colors: [Color(0xFF3A5DB9), Colors.white])),
      child: SafeArea(
        child: Scaffold(
          backgroundColor: Colors.transparent,
          body: SingleChildScrollView(
            child: Column(
              children: [
                kHeight20,
                TopContents(
                    imgPath:
                        'https://firebasestorage.googleapis.com/v0/b/oneclx.appspot.com/o/asset%2Ficon%2FBD.png?alt=media&token=88d7acab-112e-47e1-b6b6-9b7c0f94b91a',
                    title: 'ADD BUSINESS DESCRIPTION',
                    progressLevel: '3',progressValue: 0.4),
                kHeight10,
                const Text(
                  'PIN YOUR BUSINESS LOCATION',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                ),
                kHeight10,
                const Text(
                  'Provide an overview of the',
                  style: TextStyle(fontSize: 16),
                ),
                kHeight5,
                const Text(
                  'business. This description provides',
                  style: TextStyle(fontSize: 16),
                ),
                kHeight5,
                const Text(
                  'extensive details outlining the business.',
                  style: TextStyle(fontSize: 16),
                ),
                kHeight20,
                Form(
                  key: _fKey,
                  child: Column(
                    children: [
                      Container(
                        height: 130.h,
                        width: 300.w,
                        decoration: BoxDecoration(
                            border: Border.all(
                              color: const Color(0xFF3A5DB9),
                            ),
                            borderRadius: BorderRadius.circular(10)),
                        child: TextFormField(
                          controller:detail.descriptionController ,
                          validator: (value) {
                            if (value == '') {
                              return 'this form is requierd';
                            }
                            return null;
                          },
                          decoration: InputDecoration(
                              border: InputBorder.none,
                              hintText:
                                  'Enter your business overview for about page description',
                              hintStyle: TextStyle(
                                  fontSize: 11.sp,
                                  color: const Color.fromARGB(
                                      255, 126, 123, 123))),
                        ),
                      ),
                      kHeight10,
                      Fields(hint: 'Email ID',controller: detail.mailController),
                      kHeight10,
                      Fields(hint: 'Existing Website URL (Optional)',controller:detail.websiteController),
                    ],
                  ),
                ),
                BottomContent(
                  swipingClass: ScreenFive(),
                  isValidationNeeded: true,
                  formkey: _fKey,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
