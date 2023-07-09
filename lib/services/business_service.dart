import 'dart:io';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:machine_task2/models/business_model.dart';
import 'package:machine_task2/view/screens/screen_four/screen_four.dart';

class BusinessService {
  Future<String> uploadImage(String image) async {
    try {
      final path = 'files/$image';
      final file = File(image);
      final ref = FirebaseStorage.instance.ref().child(path);
      final uploadTask = ref.putFile(file);
      final snapshot = await uploadTask.whenComplete(() {});
      final urlDownload = await snapshot.ref.getDownloadURL();
      return urlDownload;
    } catch (error) {
      return '';
    }
  }

  Future<void> addBusiness(String img1, String img2, String img3) async {
    BusinessModel model = BusinessModel(
        businessName: detail.businessNameController.text,
        city: detail.cityController.text,
        pinCode: detail.pinCodeController.text,
        address: detail.addressController.text,
        phone: detail.phoneController.text,
        description: detail.descriptionController.text,
        mail: detail.mailController.text,
        website: detail.websiteController.text,
        businessCategory: detail.businessCategory.toString(),
        country: detail.country.toString(),
        state: detail.state.toString(),
        place: detail.place!,
        image1: img1,
        image2: img2,
        image3: img3);
    await BusinessService().addBusinessToFirebase(model: model);
  }

  Future<void> addBusinessToFirebase({
    required BusinessModel model,
  }) async {
    final currentemail = FirebaseAuth.instance.currentUser!.email;
    final collectionRef = FirebaseFirestore.instance
        .collection('users Businesses')
        .doc(currentemail)
        .collection('Business');
    final docRef = collectionRef.doc('business info');
    final json = model.toJson();
    await docRef.set(json);
    clearFunction();
  }

  clearFunction() {
    detail.businessNameController.clear();
    detail.cityController.clear();
    detail.pinCodeController.clear();
    detail.addressController.clear();
    detail.phoneController.clear();
    detail.descriptionController.clear();
    detail.mailController.clear();
    detail.websiteController.clear();
  }
}
