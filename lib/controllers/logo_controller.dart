import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';

class LogoController extends GetxController {
  XFile? image;
  RxString? imagepath = ''.obs;

  Future<String> getImage({required ImageSource source}) async {
    image = await ImagePicker().pickImage(source: source);
    if (image != null) {
      return image!.path;
    }
    return '';
  }
}
