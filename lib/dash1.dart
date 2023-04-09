import 'package:flutter/material.dart';
import 'package:bottom_navigation_bar/bottom_navigation_bar.dart';
import 'package:percent_indicator/percent_indicator.dart';

class main_body extends StatefulWidget {
  const main_body({super.key});

  @override
  State<main_body> createState() => _main_bodyState();
}

class _main_bodyState extends State<main_body> {
  late TabController _tabController;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        //padding: ,
        height: MediaQuery.of(context).size.height * .42,
        width: MediaQuery.of(context).size.width * .52,
        color: Color(0xFFD2BD83),
        child: CircularPercentIndicator(
          radius: 100,
          lineWidth: 20,
          percent: .75,
          progressColor: Colors.white,
          backgroundColor: Color.fromRGBO(245, 245, 245, 370),
          circularStrokeCap: CircularStrokeCap.round,
          center: const Text('75%'),
          // : TextStyle(fontSize: 50),
        ),
      ),
    );
  }
}
