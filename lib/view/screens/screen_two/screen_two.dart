import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:machine_task2/constants.dart';
import 'package:machine_task2/view/screens/map_screen/screen_three.dart';
import 'package:machine_task2/view/screens/screen_four/screen_four.dart';
import 'package:machine_task2/view/screens/screen_one/widgets/dropdown.dart';
import 'package:machine_task2/view/screens/widgets/bottom_content.dart';
import 'package:machine_task2/view/screens/widgets/small_field.dart';
import 'package:machine_task2/view/screens/widgets/top_content.dart';

class ScreenTwo extends StatefulWidget {
  const ScreenTwo({super.key});

  @override
  State<ScreenTwo> createState() => _ScreenTwoState();
}

class _ScreenTwoState extends State<ScreenTwo> {
  final GlobalKey<FormState> _fKey = GlobalKey();

  List<String> country = ['India', 'USA', 'China'];

  List<String> state = ['Tamil Nadu', 'Kerala', 'Karnataka'];

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
              children: [
                kHeight20,
                TopContents(
                    imgPath:
                        'https://firebasestorage.googleapis.com/v0/b/oneclx.appspot.com/o/asset%2Ficon%2Finfo.png?alt=media&token=574c6342-3ccd-4d9b-91ea-937844c9229c',
                    title: 'Location & Contact Info',
                    progressLevel: '1',
                    progressValue: 0.2),
                kHeight10,
                Text(
                  'ADD BUSINESS LOCATION',
                  style:
                      TextStyle(fontSize: 16.sp, fontWeight: FontWeight.bold),
                ),
                kHeight10,
                MyDropDown(
                  list: country,
                  hint: 'Select Country',
                  pageNo: 2,
                ),
                kHeight10,
                MyDropDown(list: state, hint: 'State', pageNo: 3),
                kHeight10,
                Form(
                  key: _fKey,
                  child: Column(
                    children: [
                      SmallFields(
                          hint: 'City', controller: detail.cityController),
                      kHeight10,
                      SmallFields(
                          hint: 'Pincode',
                          controller: detail.pinCodeController),
                      kHeight10,
                      SmallFields(
                          hint: 'Address Line',
                          controller: detail.addressController),
                      kHeight10,
                      SmallFields(
                          hint: 'Mobile Number',
                          controller: detail.phoneController),
                    ],
                  ),
                ),
                BottomContent(
                    swipingClass: const ScreenThree(),
                    formkey: _fKey,
                    isValidationNeeded: true),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
