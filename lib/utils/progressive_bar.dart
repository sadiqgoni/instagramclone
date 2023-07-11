import 'package:flutter/material.dart';
import 'package:percent_indicator/percent_indicator.dart';

class MyProgressBar extends StatelessWidget {
  final double percentWatch;

  const MyProgressBar({required this.percentWatch, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LinearPercentIndicator(
      lineHeight: 4,
      percent: percentWatch,
      progressColor: Colors.white, // Customize the progress color
      backgroundColor: Colors.grey[400], // Customize the background color
    );
  }
}
