import 'package:flutter/material.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';
import 'package:pbcheducations/trainingHome.dart';
import 'package:firebase_database/firebase_database.dart';

import '../aboutUs.dart';
import '../ourNews.dart';

class TrainingMain extends StatefulWidget {
  final String trainingNumber;
  final String recievedFasl;
  final String recievedBab;
  final String recievedSubject;
  final String recievedLevel;

  const TrainingMain({
    Key key,
    this.trainingNumber,
    this.recievedFasl,
    this.recievedBab,
    this.recievedSubject,
    this.recievedLevel,
  }) : super(key: key);

  @override
  _TrainingMainState createState() => _TrainingMainState();
}

var count = 1;

Future<InitializationStatus> _initGoogleMobileAds() {
  return MobileAds.instance.initialize();
}

class _TrainingMainState extends State<TrainingMain> {
  BannerAd _bannerAd;

  bool viewVisible = false;

  void showWidget() {
    setState(() {
      viewVisible = true;
    });
  }

  void hideWidget() {
    setState(() {
      viewVisible = false;
    });
  }

  void change() {
    setState(() {
      if (count < 10) {
        count++;
      } else {
        count = 1;

        Navigator.pushAndRemoveUntil(
          context,
          MaterialPageRoute(
            builder: (context) => TrainingHome(),
          ),
          (Route<dynamic> route) => false,
        );
      }
    });
  }

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

    _bannerAd.load();

    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final AdWidget adWidget = AdWidget(ad: _bannerAd);
    print(count);
    print(widget.trainingNumber +
        " .... " +
        widget.recievedBab +
        " .... " +
        widget.recievedFasl +
        " .... " +
        widget.recievedLevel +
        " .... " +
        widget.recievedSubject);
    return MaterialApp(
      title: 'التدريبات المحلوله',
      home: Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [Colors.orangeAccent, Colors.orange[100]])),
        child: Scaffold(
          backgroundColor: Colors.transparent,
          appBar: AppBar(
            title: Text("التدريبات المحلوله"),
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
            backgroundColor: Colors.orange.withOpacity(0.5),
            elevation: 50.0,
            leading: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Image.asset(
                'assets/scholarship.png',
              ),
            ), //IconButton
          ),
          body: Center(
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Container(
                        alignment: Alignment.center,
                        child: adWidget,
                        width: _bannerAd.size.width.toDouble(),
                        height: _bannerAd.size.height.toDouble(),
                      )),
                  SizedBox(
                    height: 10,
                  ),
                  FutureBuilder(
                    future: FirebaseDatabase.instance
                        .reference()
                        .child("levels")
                        .child(widget.recievedLevel)
                        .child(widget.recievedSubject)
                        .child(widget.recievedBab)
                        .child(widget.recievedFasl)
                        .child(widget.trainingNumber)
                        .child(count.toString())
                        .once(),
                    builder: (BuildContext context,
                        AsyncSnapshot<DataSnapshot> user) {
                      switch (user.connectionState) {
                        case ConnectionState.none:
                          return Text('Press button to start.');
                        case ConnectionState.active:
                        case ConnectionState.waiting:
                          return CircularProgressIndicator();
                        case ConnectionState.done:
                          if (user.hasError)
                            return Text('Error: ${user.error}');
                          return Column(
                            children: <Widget>[
                              Padding(
                                padding: const EdgeInsets.all(20.0),
                                child: Text(
                                  'السؤال $count : ' +
                                      user.data.value["question"].toString(),
                                  textAlign: TextAlign.right,
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 20,
                                      color: Colors.orange[900]),
                                ),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Container(
                                padding: EdgeInsets.fromLTRB(40.0, 0, 40.0, 0),
                                width: double.infinity,
                                child: RaisedButton(
                                  child: Text(
                                    viewVisible
                                        ? "أخفاء الاجابه"
                                        : "أظهر الاجابه",
                                    style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  onPressed: () {
                                    viewVisible ? hideWidget() : showWidget();
                                  },
                                  color: Colors.orange,
                                  textColor: Colors.white,
                                  shape: RoundedRectangleBorder(
                                      borderRadius:
                                          BorderRadius.circular(80.0)),
                                  padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
                                ),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Visibility(
                                visible: viewVisible,
                                child: Padding(
                                  padding: const EdgeInsets.fromLTRB(
                                      20.0, 0, 20.0, 0),
                                  child: Container(
                                    alignment: Alignment.center,
                                    width: double.infinity,
                                    decoration: BoxDecoration(
                                      border:
                                          Border.all(color: Colors.transparent),
                                      color: Colors.amber,
                                    ),
                                    child: Padding(
                                      padding: const EdgeInsets.all(10.0),
                                      child: Text(
                                        user.data.value['answer'].toString(),
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 20,
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Container(
                                width: double.infinity,
                                padding: EdgeInsets.fromLTRB(40.0, 0, 40.0, 0),
                                child: RaisedButton(
                                  child: Text(
                                    'السؤال التــالى',
                                    style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  onPressed: () {
                                    setState(() {
                                      viewVisible = false;
                                      change();
                                    });
                                  },
                                  color: Colors.orange,
                                  textColor: Colors.white,
                                  shape: RoundedRectangleBorder(
                                      borderRadius:
                                          BorderRadius.circular(80.0)),
                                  padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
                                ),
                              )
                            ],
                          );
                      }
                      return null; // unreachable
                    },
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
