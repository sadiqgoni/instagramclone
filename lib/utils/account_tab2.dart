import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AccountTab2 extends StatelessWidget {
  const AccountTab2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  GridView.builder(gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3),
        itemCount: 5,
        itemBuilder: (context,index){
          return Padding(
            padding: const EdgeInsets.all(2.0),
            child: Container(
              color: Colors.green[100],
            ),
          );
        });
  }
}
