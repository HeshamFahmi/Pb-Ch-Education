import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_windowmanager/flutter_windowmanager.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';
import 'package:pbcheducations/quizHome.dart';
import 'package:pbcheducations/trainingHome.dart';
import 'package:splashscreen/splashscreen.dart';
import 'answeredQuestionsHome.dart';
import 'homePage.dart';
import 'package:bottom_navy_bar/bottom_navy_bar.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  MobileAds.instance.initialize();

  runApp(new MaterialApp(
    home: new MyApp(),
    debugShowCheckedModeBanner: false,
  ));
}

String appAdsId = "ca-app-pub-2300635421121646~1599048476";
String appBannerId = "ca-app-pub-2300635421121646/4033640122";

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => new _MyAppState();
}

class _MyAppState extends State<MyApp> {
  Future<void> disableCapture() async {
    await FlutterWindowManager.addFlags(FlutterWindowManager.FLAG_SECURE);
  }

  @override
  void initState() {
    disableCapture();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return new SplashScreen(
      seconds: 3,
      navigateAfterSeconds: new AfterSplash(),
      image: new Image.asset(
        "assets/scholarship.png",
      ),
      title: new Text(
        'Pb Ch Education',
        textScaleFactor: 2,
      ),
      backgroundColor: Colors.cyan[100],
      photoSize: 100,
      loaderColor: Colors.greenAccent,
    );
  }
}

class AfterSplash extends StatefulWidget {
  @override
  _AfterSplashState createState() => _AfterSplashState();
}

class _AfterSplashState extends State<AfterSplash> {
  int _currentIndex = 0;

  final List<Widget> _children = [
    HomePage(),
    QuizHome(),
    TrainingHome(),
    AnsweredQuestionsHome()
  ];

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      bottomNavigationBar: BottomNavyBar(
        selectedIndex: _currentIndex,
        showElevation: true,
        itemCornerRadius: 24,
        backgroundColor: Colors.black,
        curve: Curves.easeIn,
        onItemSelected: (index) => setState(() => _currentIndex = index),
        items: <BottomNavyBarItem>[
          BottomNavyBarItem(
            icon: Icon(Icons.apps),
            title: Text('الصفحه الرئيسيه'),
            activeColor: Colors.cyan,
            textAlign: TextAlign.center,
          ),
          BottomNavyBarItem(
            icon: Icon(Icons.people),
            title: Text('الأمتحانات القصيره'),
            activeColor: Colors.green,
            textAlign: TextAlign.center,
          ),
          BottomNavyBarItem(
            icon: Icon(Icons.message),
            title: Text(
              'التدريبات المحلوله',
            ),
            activeColor: Colors.orange,
            textAlign: TextAlign.center,
          ),
          BottomNavyBarItem(
            icon: Icon(Icons.settings),
            title: Text('الاسئله المجابه'),
            activeColor: Colors.purple,
            textAlign: TextAlign.center,
          ),
        ],
      ),
      body: _children[_currentIndex],
    );
  }
}
