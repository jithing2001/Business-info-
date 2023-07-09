import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:machine_task2/constants.dart';
import 'package:machine_task2/view/screens/congrats_screen/widgets/button_widget.dart';
import 'package:machine_task2/view/screens/dashboard/dashboard.dart';

class CongratsScreen extends StatelessWidget {
  const CongratsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        decoration: const BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.center,
                colors: [Color(0xFF3A5DB9), Colors.white])),
        child: Scaffold(
          backgroundColor: Colors.transparent,
          body: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Image(
                  image: NetworkImage(
                      'https://firebasestorage.googleapis.com/v0/b/oneclx.appspot.com/o/asset%2Flogo%2Fcomplete.png?alt=media&token=6d442c4f-7d07-43a3-8c3d-b38c13caa464')),
              kHeight20,
              Text(
                'CONGRATS!',
                style: TextStyle(fontSize: 24.sp, fontWeight: FontWeight.bold),
              ),
              kHeight10,
              Text(
                'YOU COMPLETED THE PROCESS',
                style: TextStyle(fontSize: 22.sp, fontWeight: FontWeight.bold),
              ),
              kHeight10,
              const Text('Your Business Website URL: '),
              kHeight20,
              InkWell(
                  onTap: () {
                    Get.to(DashBoard());
                  },
                  child: FinalButtons()),
              kHeight10,
              FinalButtons(
                title: 'WEBSITE',
              )
            ],
          ),
        ),
      ),
    );
  }
}
