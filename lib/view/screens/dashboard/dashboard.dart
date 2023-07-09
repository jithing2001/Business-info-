import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:machine_task2/constants.dart';
import 'package:machine_task2/utils/alert.dart';

class DashBoard extends StatelessWidget {
  DashBoard({super.key});
  final currentemail = FirebaseAuth.instance.currentUser?.email;

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
              body: StreamBuilder(
                  stream: FirebaseFirestore.instance
                      .collection('users Businesses')
                      .doc(currentemail)
                      .collection('Business')
                      .doc('business info')
                      .snapshots(),
                  builder: (context, snapshot) {
                    if (snapshot.data == null) {
                      return const Center(
                        child: CircularProgressIndicator(),
                      );
                    }
                    return SingleChildScrollView(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Column(
                            children: [
                              kHeight30,
                              Text(
                                'YOUR BUSINESS INFO',
                                style: TextStyle(
                                    fontSize: 22.sp,
                                    color: kWhite,
                                    fontWeight: FontWeight.bold),
                              ),
                              kHeight20,
                              CircleAvatar(
                                radius: 60,
                                backgroundImage:
                                    NetworkImage(snapshot.data!['image1']),
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  CircleAvatar(
                                    radius: 60,
                                    backgroundImage:
                                        NetworkImage(snapshot.data!['image2']),
                                  ),
                                  kWidth20,
                                  CircleAvatar(
                                    radius: 60,
                                    backgroundImage:
                                        NetworkImage(snapshot.data!['image3']),
                                  ),
                                ],
                              ),
                              kHeight20,
                              Text(
                                snapshot.data!['businessName'],
                                style: const TextStyle(
                                    fontSize: 25,
                                    fontWeight: FontWeight.bold,
                                    color: Color(0xFF3A5DB9)),
                              ),
                              SizedBox(
                                height: 5.h,
                                width: 100.w,
                                child: Divider(
                                  color: kBlue,
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.all(10.sp),
                                child: Column(
                                  children: [
                                    Text(
                                        'Business Category : ${snapshot.data!['businessCategory']}'),
                                    kHeight10,
                                    Text(
                                        'Description : ${snapshot.data!['description']}'),
                                    kHeight10,
                                    SizedBox(
                                        width: 250,
                                        child: Text(
                                          'Location : ${snapshot.data!['place']}',
                                          overflow: TextOverflow.ellipsis,
                                        )),
                                    kHeight10,
                                    Text(
                                        'Address : ${snapshot.data!['address']}'),
                                    kHeight10,
                                    Text('City : ${snapshot.data!['city']}'),
                                    kHeight10,
                                    Text('State : ${snapshot.data!['state']}'),
                                    kHeight10,
                                    Text(
                                        'Country : ${snapshot.data!['country']}'),
                                    kHeight10,
                                    Text(
                                        'Pin Code : ${snapshot.data!['pinCode']}'),
                                    kHeight10,
                                    Text('E-Mail : ${snapshot.data!['mail']}'),
                                    kHeight10,
                                    Text(
                                        'Mobile No : ${snapshot.data!['phone']}'),
                                    kHeight10,
                                    Text(
                                        'Website : ${snapshot.data!['website']}'),
                                    kHeight10,
                                    ElevatedButton(
                                        onPressed: () {
                                          Get.dialog(const Alert());
                                        },
                                        child: const Icon(Icons.logout))
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    );
                  }),
            )));
  }
}
