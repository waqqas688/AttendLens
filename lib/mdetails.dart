import 'package:flutter/material.dart';

class mdetails extends StatefulWidget {
  const mdetails({super.key});

  @override
  State<mdetails> createState() => _mdetailsState();
}

class _mdetailsState extends State<mdetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        alignment: Alignment.center,
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                height: 145,
                width: MediaQuery.of(context).size.width * .82,
                color: Color(0xFFD2BD83),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                height: 145,
                width: MediaQuery.of(context).size.width * .82,
                color: Color(0xFFD2BD83),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                height: 145,
                width: MediaQuery.of(context).size.width * .82,
                color: Color(0xFFD2BD83),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
