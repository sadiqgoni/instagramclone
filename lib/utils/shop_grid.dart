import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ShopGrid extends StatelessWidget {
  const ShopGrid({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  GridView.builder(gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
        itemCount: 10,
        itemBuilder: (context,index){
          return Padding(
            padding: const EdgeInsets.all(2.0),
            child: Container(
              color: Colors.pink[100],
            ),
          );
        });
  }
}
