import 'dart:async';
import 'package:flutter/material.dart';
import 'my_story1.dart';
import 'my_story2.dart';
import 'my_story3.dart';
import 'my_story_bars.dart';

class StoryPage extends StatefulWidget {
  const StoryPage({Key? key}) : super(key: key);

  @override
  State<StoryPage> createState() => _StoryPageState();
}

class _StoryPageState extends State<StoryPage> {
  int currentStoryIndex = 0;
  final List<Widget> myStories = const [
    MyStory1(),
    MyStory2(),
    MyStory3(),
  ];
  List<double> percentWatch = [];
  @override
  void initState() {
    super.initState();

    for (int i = 0; i < myStories.length; i++) {
      percentWatch.add(0);
    }
    _startWatching();
  }

  void _startWatching() {
    Timer.periodic(const Duration(milliseconds: 50), (timer) {
      setState(() {
        if (percentWatch[currentStoryIndex] + 0.01 < 1) {
          percentWatch[currentStoryIndex] += 0.01;
        } else {
          percentWatch[currentStoryIndex] = 1;
          timer.cancel();

          if (currentStoryIndex < myStories.length - 1) {
            currentStoryIndex++;
            _startWatching();
          } else {
            Navigator.pop(context);
          }
        }
      });
    });
  }

  void _onTapDown(TapDownDetails details) {
    final double screenWidth = MediaQuery.of(context).size.width;
    final double dx = details.globalPosition.dx;

    if (dx < screenWidth / 2) {
      setState(() {
        if (currentStoryIndex > 0) {
          percentWatch[currentStoryIndex - 1] = 0;
          percentWatch[currentStoryIndex] = 0;
          currentStoryIndex--;
        } else {
          if (currentStoryIndex < myStories.length - 1) {
            percentWatch[currentStoryIndex] = 1;
            currentStoryIndex++;
          } else {
            percentWatch[currentStoryIndex] = 1;
          }
        }
      });
    } else {
      setState(() {
        if (currentStoryIndex < myStories.length - 1) {
          percentWatch[currentStoryIndex] = 1;
          currentStoryIndex++;
        } else {
          percentWatch[currentStoryIndex] = 1;
        }
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTapDown: (details) => _onTapDown(details),
      child: Scaffold(
          backgroundColor: Colors.purple,
          body: Stack(
            children: [
              myStories[currentStoryIndex],
              MyStoryBars(
                percentWatch: percentWatch,
              ),
              Padding(
                padding: const EdgeInsets.all(18.0),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 50.0),
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
                              const Padding(
                                padding: EdgeInsets.all(8.0),
                                child: Text(
                                  "@sadiqgonii",
                                  style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                              const Text(
                                "1h",
                                style:
                                    TextStyle(fontSize: 14, color: Colors.grey),
                              ),
                            ],
                          ),
                          const Icon(
                            Icons.cancel_outlined,
                          )
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 500,
                    ),
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.only(top: 200.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              padding: const EdgeInsets.symmetric(
                                  vertical: 12, horizontal: 80),
                              decoration: BoxDecoration(
                                  border: Border.all(color: Colors.white),
                                  borderRadius: BorderRadius.circular(12)),
                              child: const Text("Send Message"),
                            ),
                            Row(
                              children: const [
                                Icon(Icons.send),
                                SizedBox(
                                  width: 8,
                                ),
                                Icon(Icons.more_horiz),
                              ],
                            )
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              )
            ],
          )),
    );
  }
}
