import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:instagramclone/utils/progressive_bar.dart';

class MyStoryBars extends StatelessWidget {
  List<double> percentWatch = [];
  MyStoryBars({required this.percentWatch, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 50, right: 8.0, left: 8.0),
      child: Row(
        children: [
          Expanded(
            child: MyProgressBar(percentWatch: percentWatch[0]),
          ),
          Expanded(
            child: MyProgressBar(percentWatch: percentWatch[1]),
          ),
          Expanded(
            child: MyProgressBar(percentWatch: percentWatch[2]),
          ),
        ],
      ),
    );
  }
}
