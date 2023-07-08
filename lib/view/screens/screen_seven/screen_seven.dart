import 'package:flutter/material.dart';
import 'package:machine_task2/controllers/logo_controller.dart';
import 'package:machine_task2/view/screens/screen_eight/screen_eight.dart';
import 'package:machine_task2/view/widgets/business_image_screen.dart';

class ScreenSeven extends StatelessWidget {
  ScreenSeven({super.key});

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
            swippingClass: ScreenEight(),
            text: 'Upload business photos for your business website',
            subText: 'Atleat 3 images (Size : 300 x 300 Pixels)',
            progressLevel: '5',
            pageNo: 3,progressValue: 0.7,
          ),
        ),
      ),
    );
  }
}
