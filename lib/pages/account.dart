import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:instagramclone/utils/account_tab.dart';

import '../utils/account_tab2.dart';
import '../utils/bubble_stories.dart';

class UserAccount extends StatelessWidget {
  UserAccount({
    super.key,
  });
  List<String> _archivesStory = const [
    "20 🎉",
    "19 🎉",
    "18 🎉",
    "17 🎉",
    "16 🎉",
    "15 🎉"
  ];
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
            backgroundColor: Colors.transparent,
            elevation: 0.0,
            title: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: const [
                    Text(
                      "gonii_jr",
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                    Icon(Icons.arrow_drop_down),
                  ],
                ),
                Row(
                  children: const [
                    Icon(Icons.add_box_outlined),
                    SizedBox(
                      width: 10,
                    ),
                    Icon(Icons.menu),
                  ],
                ),
              ],
            )),
        body: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 20, top: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    height: 100,
                    width: 100,
                    decoration: BoxDecoration(
                        shape: BoxShape.circle, color: Colors.grey[300]),
                  ),
                  Expanded(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Column(
                          children: const [
                            Text(
                              "8",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 20),
                            ),
                            Text("Posts"),
                          ],
                        ),
                        Column(
                          children: const [
                            Text(
                              "885",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 20),
                            ),
                            Text("Following"),
                          ],
                        ),
                        Column(
                          children: const [
                            Text(
                              "981",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 20),
                            ),
                            Text("Following"),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(18.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    "Sadiq Goni",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  const Padding(
                    padding: EdgeInsets.symmetric(vertical: 2.0),
                    child: Text("Software Engineer 💻"),
                  ),
                  Row(
                    children: const [
                      Icon(
                        Icons.link_outlined,
                        size: 20,
                        color: Colors.blue,
                      ),
                      Text(
                        "sadiqgonii.netlify.app/",
                        style: TextStyle(color: Colors.blue),
                      )
                    ],
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 18),
              child: Row(
                children: [
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(2.0),
                      child: Container(
                        padding: const EdgeInsets.all(5.0),
                        child: const Text("Edit Profile"),
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.grey),
                          borderRadius: BorderRadius.circular(8),
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(2.0),
                      child: Container(
                        padding: const EdgeInsets.all(5.0),
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.grey),
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: const Text("Share Profile"),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(2.0),
                    child: Container(
                      padding: const EdgeInsets.all(2.0),
                      child: const Icon(Icons.person_add),
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.grey),
                        borderRadius: BorderRadius.circular(8),
                      ),
                    ),
                  )
                ],
              ),
            ),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 2),
              height: 130, // Adjust the height as needed
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: _archivesStory.length,
                  itemBuilder: (context, index) {
                    final currentArchivesStory = _archivesStory[index];
                    return StoryCircle(
                      userName: currentArchivesStory,
                    );
                  }),
            ),
            Expanded(
              child: Column(
                children: [
                  Container(
                    padding: const EdgeInsets.symmetric(horizontal: 10,),
                    child: const TabBar(
                      tabs: [
                        Tab(icon: Icon(Icons.grid_on_rounded)),
                        Tab(icon: Icon(Icons.person_pin_outlined)),
                      ],
                    ),
                  ),
                  const Expanded(
                    child: Padding(
                      padding: EdgeInsets.only(top: 0),
                      child: TabBarView(
                        children: [
                          AccountTab1(),
                          AccountTab2(),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
