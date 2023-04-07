import 'dart:html';
import 'package:flutter/material.dart';

class main_body extends StatelessWidget {
  const main_body({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Hello fraaands"),

      ),
      body: Center(
        child: Container(
          child: Text("Welcome to my tatti app"),
        ),
      ),
      drawer: Drawer(
        //backgroundColor:  ,
      ),
    );
  }
}
