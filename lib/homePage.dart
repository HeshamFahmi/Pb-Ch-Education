import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:pbcheducations/quizHome.dart';
import 'package:pbcheducations/trainingHome.dart';

import 'aboutUs.dart';
import 'answeredQuestionsHome.dart';
import 'ourNews.dart';
import 'paidExam.dart';
import 'teacherExam.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

Future<InitializationStatus> _initGoogleMobileAds() {
  return MobileAds.instance.initialize();
}

final List<String> imgs = [
  'assets/Quiz.jpeg',
  'assets/Training.jpeg',
  'assets/AnswerdQuestions.jpeg'
];

var routes = [QuizHome(), TrainingHome(), AnsweredQuestionsHome()];

final List<Widget> imageSliders = imgs.map((item) {
  return Builder(
    builder: (BuildContext context) {
      return GestureDetector(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) {
                return routes[imgs.indexOf(item)];
              },
            ),
          );
        },
        child: Container(
            width: MediaQuery.of(context).size.width,
            child: ClipRRect(
              child: Image.asset(
                item,
                fit: BoxFit.fill,
              ),
            )),
      );
    },
  );
}).toList();

class _HomePageState extends State<HomePage> {
  BannerAd _bannerAd;

  @override
  void initState() {
    _initGoogleMobileAds();
    _bannerAd = BannerAd(
      adUnitId: "ca-app-pub-2300635421121646/4033640122",
      request: AdRequest(),
      size: AdSize.banner,
      listener: AdListener(
        onAdLoaded: (Ad ad) {
          print('$BannerAd loaded.');
        },
        onAdFailedToLoad: (Ad ad, LoadAdError error) {
          print('$BannerAd failedToLoad: $error');
        },
        onAdOpened: (Ad ad) => print('$BannerAd onAdOpened.'),
        onAdClosed: (Ad ad) => print('$BannerAd onAdClosed.'),
        onApplicationExit: (Ad ad) => print('$BannerAd onApplicationExit.'),
      ),
    );

    super.initState();

    _bannerAd.load();
  }

  @override
  Widget build(BuildContext context) {
    final AdWidget adWidget = AdWidget(ad: _bannerAd);
    return MaterialApp(
      title: 'الصفحه الرئيسيه',
      home: Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [Colors.cyanAccent, Colors.cyan[200]])),
        child: Scaffold(
          backgroundColor: Colors.transparent,
          appBar: AppBar(
            title: Text("PbChEducation"),
            actions: <Widget>[
              IconButton(
                icon: Icon(Icons.fiber_new_sharp),
                tooltip: 'Our News',
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => OurNews(),
                      ));
                },
              ), //IconButton
              IconButton(
                icon: Icon(Icons.new_releases),
                tooltip: 'About Us',
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => AboutUs(),
                      ));
                },
              ), //IconButton
            ], //<Widget>[]
            backgroundColor: Colors.cyan,
            elevation: 50.0,
            leading: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Image.asset(
                'assets/scholarship.png',
              ),
            ), //IconButton
          ),
          body: SingleChildScrollView(
            child: Column(
              children: <Widget>[
                SizedBox(
                  height: 40,
                ),
                Container(
                    child: CarouselSlider(
                  options: CarouselOptions(
                    //aspectRatio: 1.5,
                    enlargeCenterPage: true,
                    scrollDirection: Axis.horizontal,
                    autoPlay: true,
                  ),
                  items: imageSliders,
                )),
                SizedBox(
                  height: 10,
                ),
                Container(
                  alignment: Alignment.center,
                  child: adWidget,
                  width: _bannerAd.size.width.toDouble(),
                  height: _bannerAd.size.height.toDouble(),
                ),
                SizedBox(
                  height: 10,
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(40.0, 0, 40.0, 0),
                  child: Container(
                    height: 50,
                    width: double.infinity,
                    child: FlatButton(
                      color: Colors.cyan,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(18.0)),
                      child: new Text(
                        'أستاذى',
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      ),
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => TeacherExam(),
                            ));
                      },
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(40.0, 0, 40.0, 0),
                  child: Container(
                    height: 50,
                    width: double.infinity,
                    child: FlatButton(
                      color: Colors.cyan,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(18.0)),
                      child: new Text(
                        'مسابقات مدفوعه',
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      ),
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => PaidExam(),
                            ));
                      },
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => OurNews(),
                            ));
                      },
                      child: Container(
                        decoration: BoxDecoration(
                          color: Colors.cyan,
                          border: Border.all(
                            color: Colors.transparent,
                            width: 0,
                          ),
                          borderRadius: BorderRadius.circular(12),
                        ),
                        width: 150,
                        child: Column(
                          children: [
                            Container(
                              width: double.infinity,
                              height: 200,
                              child: Image.network(
                                "https://icons.iconarchive.com/icons/pelfusion/long-shadow-ios7/1024/News-icon.png",
                                fit: BoxFit.cover,
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(
                                "أخبارنا",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => AboutUs(),
                            ));
                      },
                      child: Container(
                        decoration: BoxDecoration(
                          color: Colors.cyan,
                          border: Border.all(
                            color: Colors.transparent,
                            width: 0,
                          ),
                          borderRadius: BorderRadius.circular(12),
                        ),
                        width: 150,
                        child: Column(
                          children: [
                            Container(
                              width: double.infinity,
                              height: 200,
                              child: Image.network(
                                "https://www.awalstep.com/wp-content/uploads/2018/10/bcc4e4c5e4709b6d21494531838cd706246dd719.png",
                                fit: BoxFit.cover,
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(
                                "معلومات عننا",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                          ],
                        ),
                      ),
                    )
                  ],
                ),
                SizedBox(
                  height: 20,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
