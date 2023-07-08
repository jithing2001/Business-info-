// ignore_for_file: prefer_const_constructors
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:machine_task2/constants.dart';
import 'package:machine_task2/controllers/swipe_controller.dart';

class BottomContent extends StatefulWidget {
  BottomContent(
      {super.key,
      required this.swipingClass,
      this.formkey,
      required this.isValidationNeeded});
  final GlobalKey<FormState>? formkey;

  final bool isValidationNeeded;

  Widget swipingClass;

  @override
  State<BottomContent> createState() => _BottomContentState();
}

class _BottomContentState extends State<BottomContent> {
  bool isButtonVisible = true;
  SwipeController sp = SwipeController();

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.bottomCenter,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Image(
              height: 120.h,
              width: 120.w,
              image: const NetworkImage(
                  'https://firebasestorage.googleapis.com/v0/b/oneclx.appspot.com/o/asset%2Flogo%2Fimg1.png?alt=media&token=8aa401b4-5635-451f-af67-3dcd82117797'),
              fit: BoxFit.contain,
            ),
            Image(
                image: NetworkImage(
                    'https://firebasestorage.googleapis.com/v0/b/oneclx.appspot.com/o/asset%2Flogo%2Fimg2.png?alt=media&token=b8fcb386-3ab4-4f9c-bece-bc3be039c5e5'))
          ],
        ),
        isButtonVisible
            ? Dismissible(
                confirmDismiss: (direction) async {
                  // if (widget.isValidationNeeded == true) {
                  //   return widget.formkey!.currentState!.validate();
                  // } else {
                  //   Navigator.of(context).push(MaterialPageRoute(
                  //       builder: (context) => widget.swipingClass));
                  // }
                  if (direction == DismissDirection.startToEnd) {
                    if (widget.isValidationNeeded) {
                      if (widget.formkey!.currentState!.validate()) {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => widget.swipingClass));
                      }
                    } else {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => widget.swipingClass));
                    }
                  } else if (direction == DismissDirection.endToStart) {
                    Navigator.of(context).pop();
                  }
                  return false;
                },
                key: Key('button'),
                direction: DismissDirection.horizontal,
                child: ListTile(
                  title: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      kWidth20,
                      Image(
                          image: NetworkImage(
                              'https://firebasestorage.googleapis.com/v0/b/oneclx.appspot.com/o/asset%2Flogo%2FLefi.png?alt=media&token=6ce0a918-d370-46ac-8569-13be12e85940')),
                      Text(
                        '     Swipe     ',
                        style: TextStyle(
                            fontSize: 20,
                            color: Color(0xFF3A5DB9),
                            fontWeight: FontWeight.bold),
                      ),
                      Image(
                          image: NetworkImage(
                              'https://firebasestorage.googleapis.com/v0/b/oneclx.appspot.com/o/asset%2Flogo%2FRight.png?alt=media&token=6f429db7-33c2-4063-865b-f0f8417a4acc')),
                    ],
                  ),
                ),
              )
            : Container()
      ],
    );
  }
}
