import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ExploreGrid extends StatelessWidget {
  const ExploreGrid({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  GridView.builder(gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3),
        itemCount: 20,
        itemBuilder: (context,index){
      return Padding(
        padding: const EdgeInsets.all(2.0),
        child: Container(
          color: Colors.deepPurple[100],
        ),
      );
    });
  }
}
