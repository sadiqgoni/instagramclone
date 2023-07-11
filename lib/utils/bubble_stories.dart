import 'package:flutter/material.dart';

class StoryCircle extends StatelessWidget {
  final String userName;
  final Function()? onTap;
  const StoryCircle({
    super.key,
    this.onTap, required this.userName,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: GestureDetector(
        onTap: onTap,
        child: Column(
          children: [
            Container(
              height: 80,
              width: 80,
              decoration: const BoxDecoration(color: Colors.grey, shape: BoxShape.circle),
            ),
            const SizedBox(height: 10,),
            Text(userName),
          ],
        ),
      ),
    );
  }
}
