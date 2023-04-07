import 'dart:async';
import 'package:flutter/material.dart';
import 'package:studlens/home_page.dart';

class Splash_screen extends StatefulWidget {
  @override
  _Splashscreen createState() => _Splashscreen();
}

class _Splashscreen extends State<Splash_screen> {
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 4), () => Navigator.pushNamed(context, 'login'));
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
