import 'package:flutter/material.dart';
import 'package:get/get.dart';

class DetailController extends GetxController {
  TextEditingController businessNameController = TextEditingController();
  TextEditingController cityController = TextEditingController();
  TextEditingController pinCodeController = TextEditingController();
  TextEditingController addressController = TextEditingController();
  TextEditingController phoneController = TextEditingController();
  TextEditingController descriptionController = TextEditingController();
  TextEditingController mailController = TextEditingController();
  TextEditingController websiteController = TextEditingController();
  String? businessCategory;
  String? country;
  String? state;
  String? place;
  String? imageStore1;
  String? imageStore2;
  String? imageStore3;
}
