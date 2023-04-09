import 'dart:async';
import 'package:flutter/material.dart';
import 'package:studlens/dash1.dart';
import 'package:studlens/after_splash/after_splash.dart';
import 'package:studlens/main.dart';

class Splash_screen extends StatefulWidget {
  @override
  _Splashscreen createState() => _Splashscreen();
}

class _Splashscreen extends State<Splash_screen> {
  @override
  void initState() {
    super.initState();
    Timer(
      Duration(seconds: 4),
      () => isviewed != 0
          ? Navigator.of(context).pushReplacement(
              MaterialPageRoute(builder: (context) => AfterSplash()),
            )
          : Navigator.of(context).pushReplacement(
              MaterialPageRoute(builder: (context) => MyHomePage()),
            ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          height: double.infinity,
          width: double.infinity,
          color: Color(0xFFD2BD83),
          child: Image.asset("assets/images/studlens.png")),
    );
  }
}
