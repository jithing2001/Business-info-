import 'package:flutter/material.dart';
import 'package:machine_task2/controllers/logo_controller.dart';
import 'package:machine_task2/view/screens/screen_six/screen_six.dart';
import 'package:machine_task2/view/widgets/business_image_screen.dart';

class ScreenFive extends StatelessWidget {
  ScreenFive({super.key});

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
            swippingClass: ScreenSix(),
            text: 'Upload logo for your business',
            progressLevel: '4',pageNo: 1,progressValue: 0.5,
          ),
        ),
      ),
    );
  }
}
