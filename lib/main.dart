import 'package:ewiglife/Screens/ContactUs.dart';
import 'package:flutter/material.dart';
import 'Screens/Home.dart';

void main() {
  runApp(EwigLife());
}

class EwigLife extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      routes: {
        '/': (context) => Home(),
        '/Contact Us': (context) => ContactUs(),
      },
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          fontFamily: 'Roboto',
          primaryColor: Colors.white,
          accentColor: Colors.amberAccent),
    );
  }
}
