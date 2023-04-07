import 'package:flutter/material.dart';
import 'package:studlens/after_splash.dart';
import 'package:studlens/login.dart';
import 'package:studlens/splash_screen.dart';
import 'package:studlens/verify.dart';
import 'home_page.dart';

//Besharam Adnan kab se ruka hu mai
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: "splash",
      routes: {
        "splash": (context) => Splash_screen(),
        "home": (context) => main_body(),
        "intro": (context) => AfterSplash(),
        "login": (context) => Login(),
        "verify": (context) => MyVerify()
      },
    );
  }
}
