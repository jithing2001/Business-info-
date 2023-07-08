// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:machine_task2/constants.dart';
import 'package:machine_task2/view/screens/screen_four/screen_four.dart';
import 'package:machine_task2/view/screens/screen_one/widgets/dropdown.dart';
import 'package:machine_task2/view/screens/screen_two/screen_two.dart';
import 'package:machine_task2/view/screens/widgets/bottom_content.dart';
import 'package:machine_task2/view/screens/widgets/small_field.dart';
import 'package:machine_task2/view/screens/widgets/top_content.dart';

class ScreenOne extends StatefulWidget {
  const ScreenOne({super.key});

  @override
  State<ScreenOne> createState() => _ScreenOneState();
}

class _ScreenOneState extends State<ScreenOne> {
  final GlobalKey<FormState> _formKey = GlobalKey();

  List<String> list = ['Gadgets', 'Mobile', 'Laptop'];

  // DetailController detail = DetailController();

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
              // crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                kHeight110,
                TopContents(
                    imgPath:
                        'https://firebasestorage.googleapis.com/v0/b/oneclx.appspot.com/o/asset%2Ficon%2FBP.png?alt=media&token=691c22f3-68af-4df3-a66c-97d23e551355',
                    progressLevel: '0',
                    title: 'Business Profile',progressValue: 0.1),
                kHeight30,
                Text(
                  'CREATE BUSINESS PROFILE',
                  style:
                      TextStyle(fontSize: 18.sp, fontWeight: FontWeight.bold),
                ),
                kHeight20,
                Text(
                  'Start Building Your',
                  style: TextStyle(fontSize: 17.sp),
                ),
                Text(
                  'Business Profile',
                  style: TextStyle(fontSize: 17.sp),
                ),
                kHeight20,
                Form(
                  key: _formKey,
                  child: SmallFields(
                    hint: 'Business Name',
                    controller: detail.businessNameController,
                  ),
                ),
                kHeight10,
                MyDropDown(
                    list: list,
                    hint: 'Choose',
                    pageNo: 1,),
                kHeight10,
                BottomContent(
                    swipingClass: ScreenTwo(),
                    formkey: _formKey,
                    isValidationNeeded: true),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
