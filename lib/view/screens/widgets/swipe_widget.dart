import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:machine_task2/constants.dart';

class ButtonAnimated extends StatefulWidget {
  ButtonAnimated({Key? key, required this.swipingClass}) : super(key: key);

  Widget swipingClass;

  @override
  _ButtonAnimatedState createState() => _ButtonAnimatedState();
}

class _ButtonAnimatedState extends State<ButtonAnimated> {
  bool isButtonVisible = true;

  @override
  Widget build(BuildContext context) {
    return isButtonVisible
        ? Dismissible(
            key: const Key('button'),
            direction: DismissDirection.horizontal,
            onDismissed: (direction) {
              if (direction == DismissDirection.startToEnd) {
                setState(() {
                  isButtonVisible = false;
                });
                Get.to(() => widget.swipingClass)!.then((_) {
                  setState(() {
                    isButtonVisible = true;
                  });
                });
              }
              if (direction == DismissDirection.endToStart) {
                setState(() {
                  isButtonVisible = false;
                });
                Get.back();
              }
            },
            child: ListTile(
              title: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  kWidth20,
                  const Image(
                      image: NetworkImage(
                          'https://firebasestorage.googleapis.com/v0/b/oneclx.appspot.com/o/asset%2Flogo%2FLefi.png?alt=media&token=6ce0a918-d370-46ac-8569-13be12e85940')),
                  const Text(
                    '     Swipe     ',
                    style: TextStyle(
                        fontSize: 20,
                        color: Color(0xFF3A5DB9),
                        fontWeight: FontWeight.bold),
                  ),
                  const Image(
                      image: NetworkImage(
                          'https://firebasestorage.googleapis.com/v0/b/oneclx.appspot.com/o/asset%2Flogo%2FRight.png?alt=media&token=6f429db7-33c2-4063-865b-f0f8417a4acc')),
                ],
              ),
            ),
          )
        : Container();
  }
}
