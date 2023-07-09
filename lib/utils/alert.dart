import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:machine_task2/constants.dart';
import 'package:machine_task2/services/authentication.dart';
import 'package:machine_task2/services/business_service.dart';
import 'package:machine_task2/view/user/signup/user_signup.dart';

class Alert extends StatelessWidget {
  const Alert({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: const Center(child: Text('Logout')),
      content: SizedBox(
        height: 70,
        child: Column(
          children: [
            const Text('Are you sure?'),
            kHeight20,
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                InkWell(
                  onTap: () async {
                    await Authentication().signOut();
                    Get.offAll(UserSignUp());
                  },
                  child: const Text(
                    'Yes',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ),
                kWidth30,
                InkWell(
                  onTap: () => Get.back(),
                  child: const Text(
                    'No',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
