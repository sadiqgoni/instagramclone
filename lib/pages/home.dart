import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../component_pages/story_page.dart';
import '../utils/bubble_stories.dart';
import '../utils/user_post.dart';

class UserHome extends StatefulWidget {
  const UserHome({
    super.key,
  });

  @override
  State<UserHome> createState() => _UserHomeState();
}

class _UserHomeState extends State<UserHome> {
  void _openStory() {
    Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => StoryPage(),
        ));
  }

  List<String> userNames = [
    'sadiqgonii',
    'elon_musk',
    'musjib999',
    'hauwa_sani',
    'moukareem',
    'm_jay',
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.transparent,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Text(
              "Instagram",
              style: TextStyle(color: Colors.black),
            ),
            Row(
              children: const [
                Icon(Icons.add),
                Padding(
                  padding: EdgeInsets.all(24.0),
                  child: Icon(Icons.favorite_border_rounded),
                ),
                Icon(Icons.share),
              ],
            ),
          ],
        ),
      ),
      body: Column(
        children: [
          SizedBox(
            height: 130,
            child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: userNames.length,
                itemBuilder: (context, index) {
                  final currentUserName = userNames[index];
                  return StoryCircle(
                      onTap: _openStory, userName: currentUserName);
                }),
          ),
          Expanded(
              child: ListView.builder(
                  scrollDirection: Axis.vertical,
                  itemCount: userNames.length,
                  itemBuilder: (context, index) {
                    final currentCeleb = userNames[index];
                    return UserPost(
                      name: currentCeleb,
                      celeb: currentCeleb,
                    );
                  }))
        ],
      ),
    );
  }
}
