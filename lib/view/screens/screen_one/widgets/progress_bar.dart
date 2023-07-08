import 'package:flutter/material.dart';
import 'package:machine_task2/constants.dart';

class ProgressB extends StatelessWidget {
  String progressLevel;
  final double progressValue;
  ProgressB({super.key, required this.progressLevel, required this.progressValue});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          '$progressLevel of 6 completed',
          style: const TextStyle(color: Color(0xFF3A5DB9)),
        ),
        Padding(
          padding: const EdgeInsets.all(15),
          child: LinearProgressIndicator(
              minHeight: 15,
              backgroundColor: const Color(0xFF3A5DB9),
              valueColor: AlwaysStoppedAnimation<Color>(kWhite),
              semanticsLabel: 'Progress',
              semanticsValue: '50%',
              value: progressValue),
        )
      ],
    );
  }
}
