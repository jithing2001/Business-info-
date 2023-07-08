import 'package:flutter/material.dart';
import 'package:machine_task2/controllers/logo_controller.dart';
import 'package:machine_task2/view/screens/screen_seven/screen_seven.dart';
import 'package:machine_task2/view/widgets/business_image_screen.dart';

class ScreenSix extends StatelessWidget {
  ScreenSix({super.key});

  LogoController lg = LogoController();

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
          body: BusinessImagesScreenWidget(
            lg: lg,
            swippingClass: ScreenSeven(),
            text: 'Upload header image for your business',
            subText: '(Size : 540 x 540 Pixels)',
            progressLevel: '4',pageNo: 2,progressValue: 0.6,
          ),
        ),
      ),
    );
  }
}
