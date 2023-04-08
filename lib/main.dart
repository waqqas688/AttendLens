import 'package:flutter/material.dart';
import 'package:studlens/after_splash.dart';
import 'package:studlens/dash2.dart';
import 'package:studlens/dash3.dart';
import 'package:studlens/login.dart';
import 'package:studlens/mdetails.dart';
import 'package:studlens/splash_screen.dart';
import 'package:studlens/verify.dart';
import 'dash1.dart';

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
        "d1": (context) => main_body(),
        "d2": (context) => dash2(),
        "d3": (context) => dash3(),
        "intro": (context) => AfterSplash(),
        "login": (context) => Login(),
        "verify": (context) => MyVerify(),
        "navbar": (context) => MyHomePage(),
        "graphs": (context) => mdetails(),
      },
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage>
    with SingleTickerProviderStateMixin {
  String title = 'Attendlens/Studlens';

  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 3, vsync: this);
  }

  @override
  void dispose() {
    super.dispose();
    _tabController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
        centerTitle: true,
      ),
      body: TabBarView(
        children: <Widget>[
          main_body(),
          dash2(),
          dash3(),
        ],
        // If you want to disable swiping in tab the use below code
        physics: NeverScrollableScrollPhysics(),
        controller: _tabController,
      ),
      bottomNavigationBar: Container(
        padding: EdgeInsets.all(16.0),
        child: ClipRRect(
          borderRadius: BorderRadius.all(
            Radius.circular(50.0),
          ),
          child: Container(
            color: Color(0xFFD2BD83),
            child: TabBar(
              labelColor: Colors.white,
              unselectedLabelColor: Colors.white,
              labelStyle: TextStyle(fontSize: 10.0),
              //For Indicator Show and Customization
              indicatorColor: Colors.white,
              tabs: <Widget>[
                Tab(
                  icon: Icon(
                    Icons.home,
                    size: 24.0,
                  ),
                  text: 'Home',
                ),
                Tab(
                  icon: Icon(
                    Icons.category,
                    size: 24.0,
                  ),
                  text: 'Study Material',
                ),
                Tab(
                  icon: Icon(
                    Icons.shopping_cart,
                    size: 24.0,
                  ),
                  text: 'Notice',
                ),
              ],
              controller: _tabController,
            ),
          ),
        ),
      ),
    );
  }
}
