import 'dart:html';

import 'package:ewiglife/utils/Constants.dart';
import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  VideoPlayerController _controller;

  void initState() {
    super.initState();
    _controller = VideoPlayerController.network(
      'http://www.sample-videos.com/video123/mp4/720/big_buck_bunny_720p_20mb.mp4',
    )..initialize().then((_) {
        // Ensure the first frame is shown after the video is initialized, even before the play button has been pressed.
        setState(() {});
      });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            pinned: true,
            elevation: 2.0,
            backgroundColor: Color(0xfffbf7f5),
            title: Image.asset(
              'assets/image/logo-black.png',
              height: 60,
              width: 100,
              fit: BoxFit.fitWidth,
            ),
            actions: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: InkWell(
                  child: Container(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.model_training_outlined),
                        SizedBox(
                          width: 10,
                        ),
                        Text('Trainings', style: kButtonTextStyle),
                      ],
                    ),
                  ),
                  onTap: () {
                    Navigator.pushNamed(context, '/Contact Us');
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: InkWell(
                  child: Container(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.code),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          'Development',
                          style: kButtonTextStyle,
                        ),
                      ],
                    ),
                  ),
                  onTap: () {
                    Navigator.pushNamed(context, '/Contact Us');
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: InkWell(
                  child: Container(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.phone),
                        SizedBox(
                          width: 10,
                        ),
                        Text('Contact Us', style: kButtonTextStyle),
                      ],
                    ),
                  ),
                  onTap: () {
                    Navigator.pushNamed(context, '/Contact Us');
                  },
                ),
              ),
            ],
          ),
          SliverToBoxAdapter(
            child: Container(
              child: Column(
                children: [
                  Row(
                    children: [
                      Expanded(
                        child: _controller.value.initialized
                            ? AspectRatio(
                                aspectRatio: _controller.value.aspectRatio,
                                child: VideoPlayer(_controller),
                              )
                            : Container(),
                      ),
                      Expanded(
                        child: Image.network(
                            'https://www.freecodecamp.org/news/content/images/2020/04/w-qjCHPZbeXCQ-unsplash.jpg'),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Expanded(
                        child: Image.network(
                            'https://www.freecodecamp.org/news/content/images/2020/04/w-qjCHPZbeXCQ-unsplash.jpg'),
                      ),
                      Expanded(
                        child: Image.network(
                            'https://www.freecodecamp.org/news/content/images/2020/04/w-qjCHPZbeXCQ-unsplash.jpg'),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Expanded(
                        child: Image.network(
                            'https://www.freecodecamp.org/news/content/images/2020/04/w-qjCHPZbeXCQ-unsplash.jpg'),
                      ),
                      Expanded(
                        child: Image.network(
                            'https://www.freecodecamp.org/news/content/images/2020/04/w-qjCHPZbeXCQ-unsplash.jpg'),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
