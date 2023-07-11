import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class UserPost extends StatelessWidget {
  final String name;
  final String celeb;
  const UserPost({Key? key, required this.name, required this.celeb}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Container(
                    height: 30,
                    width: 30,
                    decoration: const BoxDecoration(
                        color: Colors.grey, shape: BoxShape.circle),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Text(
                    name,
                    style: const TextStyle(fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              const Icon(Icons.more_vert),
            ],
          ),
        ),
        Container(
          height: 400,
          color: Colors.grey[300],
        ),
        Padding(
          padding: const EdgeInsets.all(16),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: const [
                  Icon(Icons.favorite_border_rounded),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 12.0),
                    child: Icon(Icons.chat_bubble_outline_rounded),
                  ),
                  Icon(Icons.send),
                ],
              ),
              const Icon(Icons.bookmark_border_outlined)
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 16.0),
          child: Row(
            children:  [
              const Text("Liked by "),
              Text(
                celeb,
                style: const TextStyle(fontWeight: FontWeight.bold),
              ),
              const Text(" and "),
              const Text(
                "others",
                style: TextStyle(fontWeight: FontWeight.bold),
              )
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 16.0, top: 8.0),
          child: RichText(
            text:  TextSpan(
                style: const TextStyle(color: Colors.black),
                children: [
                  TextSpan(
                      text: celeb,
                      style: const TextStyle(fontWeight: FontWeight.bold)),
                  const TextSpan(
                      text:
                          ' I turn the dirt they throwing into riches till filthy but who am i to drag their way')
                ]),
          ),
        )
      ],
    );
  }
}
