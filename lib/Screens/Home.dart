import 'dart:html';

import 'package:ewiglife/utils/Constants.dart';
import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff03013c),
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
                    Navigator.pushNamed(context, '/Development');
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
                        child: Image.asset('assets/image/man.gif'),
                      ),
                      Expanded(
                        child: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Container(
                                child: Text(
                                  ' Welcome',
                                  style: kHone,
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Container(
                                child: Text(
                                  ' To EwigLife',
                                  style: kHone,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.all(20.0),
                          child: Container(
                            decoration: BoxDecoration(
                                color: Colors.pinkAccent,
                                borderRadius: BorderRadius.circular(10)),
                            child: Text(
                              'EwigLife Cloud Technologies is Countinusly delivery Quality Trainings in the Fiels of Cloud Computing and Flutter Development since 2017',
                              style: khthree,
                              textAlign: TextAlign.center,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Expanded(
                        child: Container(
                            color: Colors.white,
                            child: Image.asset('assets/image/logo-black.png')),
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
