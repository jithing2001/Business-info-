import 'package:get/get.dart';

class SwipeController extends GetxController {
  bool isButton = true;

  rebuild() {
    isButton = !isButton;
    update();
  }
}
