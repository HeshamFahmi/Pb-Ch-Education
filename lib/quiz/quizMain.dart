import 'package:flutter/material.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';
import 'quizResult.dart';
import 'package:circular_countdown/circular_countdown.dart';
import 'package:firebase_database/firebase_database.dart';

import '../aboutUs.dart';
import '../ourNews.dart';

class QuizMain extends StatefulWidget {
  final String quizNumber;
  final String recievedFasl;
  final String recievedBab;
  final String recievedSubject;
  final String recievedLevel;

  const QuizMain({
    Key key,
    this.quizNumber,
    this.recievedFasl,
    this.recievedBab,
    this.recievedSubject,
    this.recievedLevel,
  }) : super(key: key);

  @override
  _QuizMainState createState() => _QuizMainState();
}

var count = 1;

Future<InitializationStatus> _initGoogleMobileAds() {
  return MobileAds.instance.initialize();
}

class _QuizMainState extends State<QuizMain> {
  BannerAd _bannerAd;
  int rightAnswers = 0;
  var userAnswers = [];
  var rightUserAnswers = [];
  var userQuestions = [];
  void change() {
    setState(() {
      if (count < 15) {
        count++;
      } else {
        count = 1;

        Navigator.pushAndRemoveUntil(
          context,
          MaterialPageRoute(
            builder: (context) => QuizResult(
              rights: rightAnswers,
              userAnswers: userAnswers,
              rightUserAnswers: rightUserAnswers,
              userQuestions: userQuestions,
            ),
          ),
          (Route<dynamic> route) => false,
        );

        /*Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => QuizResult(),
            ));*/
      }
    });
  }

  @override
  void initState() {
    _initGoogleMobileAds();
    _bannerAd = BannerAd(
      adUnitId: "ca-app-pub-2073307138460182/2670963701",
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
    count = 1;
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final AdWidget adWidget = AdWidget(ad: _bannerAd);
    print(count);
    print(widget.quizNumber +
        " .... " +
        widget.recievedBab +
        " .... " +
        widget.recievedFasl +
        " .... " +
        widget.recievedLevel +
        " .... " +
        widget.recievedSubject);
    return MaterialApp(
      title: 'الأمتحانات القصيره',
      home: Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [Colors.greenAccent, Colors.green])),
        child: Scaffold(
          backgroundColor: Colors.transparent,
          appBar: AppBar(
            title: Text("الأمتحانات القصيره"),
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
            backgroundColor: Colors.green.withOpacity(0.5),
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
                  TimeCircularCountdown(
                    unit: CountdownUnit.second,
                    countdownTotal: 900,
                    onUpdated: (unit, remainingTime) {},
                    textStyle:
                        TextStyle(color: Colors.green[900], fontSize: 20),
                    onFinished: () {
                      Navigator.pushAndRemoveUntil(
                        context,
                        MaterialPageRoute(
                          builder: (context) => QuizResult(
                            rights: rightAnswers,
                            userAnswers: userAnswers,
                            rightUserAnswers: rightUserAnswers,
                            userQuestions: userQuestions,
                          ),
                        ),
                        (Route<dynamic> route) => false,
                      );
                    },
                  ),
                  Directionality(
                    textDirection: TextDirection.rtl,
                    child: FutureBuilder(
                      future: FirebaseDatabase.instance
                          .reference()
                          .child("levels")
                          .child(widget.recievedLevel)
                          .child(widget.recievedSubject)
                          .child(widget.recievedBab)
                          .child(widget.recievedFasl)
                          .child(widget.quizNumber)
                          .child("question")
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
                            return count <= 10
                                ? Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.all(10),
                                        child: Text(
                                          'السؤال $count : ' +
                                              user.data.value["question"]
                                                  .toString(),
                                          textAlign: TextAlign.right,
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              fontSize: 20,
                                              color: Colors.green[900]),
                                        ),
                                      ),
                                      Container(
                                        margin: EdgeInsets.all(10),
                                        child: RaisedButton(
                                          onPressed: () {
                                            if (user.data.value["option1"]
                                                    .toString() ==
                                                user.data.value["answer"]
                                                    .toString()) {
                                              rightAnswers++;
                                            }
                                            userAnswers.add(user
                                                .data.value["option1"]
                                                .toString());
                                            rightUserAnswers.add(user
                                                .data.value["answer"]
                                                .toString());
                                            userQuestions.add(user
                                                .data.value["question"]
                                                .toString());

                                            change();
                                          },
                                          shape: RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(80.0)),
                                          padding: EdgeInsets.all(0.0),
                                          child: Ink(
                                            decoration: BoxDecoration(
                                                gradient: LinearGradient(
                                                  colors: [
                                                    Colors.green,
                                                    Colors.greenAccent
                                                  ],
                                                  begin: Alignment.centerLeft,
                                                  end: Alignment.centerRight,
                                                ),
                                                borderRadius:
                                                    BorderRadius.circular(
                                                        30.0)),
                                            child: Container(
                                              constraints: BoxConstraints(
                                                  maxWidth: 350.0,
                                                  minHeight: 50.0),
                                              alignment: Alignment.center,
                                              child: Text(
                                                user.data.value["option1"]
                                                    .toString(),
                                                textAlign: TextAlign.center,
                                                style: TextStyle(
                                                    color: Colors.white,
                                                    fontSize: 20),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                      Container(
                                        margin: EdgeInsets.all(10),
                                        child: RaisedButton(
                                          onPressed: () {
                                            if (user.data.value["option2"]
                                                    .toString() ==
                                                user.data.value["answer"]
                                                    .toString()) {
                                              rightAnswers++;
                                            }

                                            userAnswers.add(user
                                                .data.value["option2"]
                                                .toString());
                                            rightUserAnswers.add(user
                                                .data.value["answer"]
                                                .toString());
                                            userQuestions.add(user
                                                .data.value["question"]
                                                .toString());

                                            change();
                                          },
                                          shape: RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(80.0)),
                                          padding: EdgeInsets.all(0.0),
                                          child: Ink(
                                            decoration: BoxDecoration(
                                                gradient: LinearGradient(
                                                  colors: [
                                                    Colors.green,
                                                    Colors.greenAccent
                                                  ],
                                                  begin: Alignment.centerLeft,
                                                  end: Alignment.centerRight,
                                                ),
                                                borderRadius:
                                                    BorderRadius.circular(
                                                        30.0)),
                                            child: Container(
                                              constraints: BoxConstraints(
                                                  maxWidth: 350.0,
                                                  minHeight: 50.0),
                                              alignment: Alignment.center,
                                              child: Text(
                                                user.data.value["option2"]
                                                    .toString(),
                                                textAlign: TextAlign.center,
                                                style: TextStyle(
                                                    color: Colors.white,
                                                    fontSize: 20),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                      Container(
                                        margin: EdgeInsets.all(10),
                                        child: RaisedButton(
                                          onPressed: () {
                                            if (user.data.value["option3"]
                                                    .toString() ==
                                                user.data.value["answer"]
                                                    .toString()) {
                                              rightAnswers++;
                                            }

                                            userAnswers.add(user
                                                .data.value["option3"]
                                                .toString());
                                            rightUserAnswers.add(user
                                                .data.value["answer"]
                                                .toString());
                                            userQuestions.add(user
                                                .data.value["question"]
                                                .toString());

                                            change();
                                          },
                                          shape: RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(80.0)),
                                          padding: EdgeInsets.all(0.0),
                                          child: Ink(
                                            decoration: BoxDecoration(
                                                gradient: LinearGradient(
                                                  colors: [
                                                    Colors.green,
                                                    Colors.greenAccent
                                                  ],
                                                  begin: Alignment.centerLeft,
                                                  end: Alignment.centerRight,
                                                ),
                                                borderRadius:
                                                    BorderRadius.circular(
                                                        30.0)),
                                            child: Container(
                                              constraints: BoxConstraints(
                                                  maxWidth: 350.0,
                                                  minHeight: 50.0),
                                              alignment: Alignment.center,
                                              child: Text(
                                                user.data.value["option3"]
                                                    .toString(),
                                                textAlign: TextAlign.center,
                                                style: TextStyle(
                                                    color: Colors.white,
                                                    fontSize: 20),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                      Container(
                                        margin: EdgeInsets.all(10),
                                        child: RaisedButton(
                                          onPressed: () {
                                            if (user.data.value["option4"]
                                                    .toString() ==
                                                user.data.value["answer"]
                                                    .toString()) {
                                              rightAnswers++;
                                            }

                                            userAnswers.add(user
                                                .data.value["option4"]
                                                .toString());
                                            rightUserAnswers.add(user
                                                .data.value["answer"]
                                                .toString());
                                            userQuestions.add(user
                                                .data.value["question"]
                                                .toString());

                                            change();
                                          },
                                          shape: RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(80.0)),
                                          padding: EdgeInsets.all(0.0),
                                          child: Ink(
                                            decoration: BoxDecoration(
                                                gradient: LinearGradient(
                                                  colors: [
                                                    Colors.green,
                                                    Colors.greenAccent
                                                  ],
                                                  begin: Alignment.centerLeft,
                                                  end: Alignment.centerRight,
                                                ),
                                                borderRadius:
                                                    BorderRadius.circular(
                                                        30.0)),
                                            child: Container(
                                              constraints: BoxConstraints(
                                                  maxWidth: 350.0,
                                                  minHeight: 50.0),
                                              alignment: Alignment.center,
                                              child: Text(
                                                user.data.value["option4"]
                                                    .toString(),
                                                textAlign: TextAlign.center,
                                                style: TextStyle(
                                                    color: Colors.white,
                                                    fontSize: 20),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  )
                                : Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: <Widget>[
                                      Text(
                                        'السؤال $count : ' +
                                            user.data.value["question"]
                                                .toString(),
                                        textAlign: TextAlign.right,
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 20,
                                            color: Colors.green[900]),
                                      ),
                                      Container(
                                        margin: EdgeInsets.all(10),
                                        child: RaisedButton(
                                          onPressed: () {
                                            if (user.data.value["option1"]
                                                    .toString() ==
                                                user.data.value["answer"]
                                                    .toString()) {
                                              rightAnswers++;
                                            }

                                            userAnswers.add(user
                                                .data.value["option1"]
                                                .toString());
                                            rightUserAnswers.add(user
                                                .data.value["answer"]
                                                .toString());
                                            userQuestions.add(user
                                                .data.value["question"]
                                                .toString());

                                            change();
                                          },
                                          shape: RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(80.0)),
                                          padding: EdgeInsets.all(0.0),
                                          child: Ink(
                                            decoration: BoxDecoration(
                                                gradient: LinearGradient(
                                                  colors: [
                                                    Colors.green,
                                                    Colors.greenAccent
                                                  ],
                                                  begin: Alignment.centerLeft,
                                                  end: Alignment.centerRight,
                                                ),
                                                borderRadius:
                                                    BorderRadius.circular(
                                                        30.0)),
                                            child: Container(
                                              constraints: BoxConstraints(
                                                  maxWidth: 350.0,
                                                  minHeight: 50.0),
                                              alignment: Alignment.center,
                                              child: Text(
                                                user.data.value["option1"]
                                                    .toString(),
                                                textAlign: TextAlign.center,
                                                style: TextStyle(
                                                    color: Colors.white,
                                                    fontSize: 20),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                      Container(
                                        margin: EdgeInsets.all(10),
                                        child: RaisedButton(
                                          onPressed: () {
                                            if (user.data.value["option2"]
                                                    .toString() ==
                                                user.data.value["answer"]
                                                    .toString()) {
                                              rightAnswers++;
                                            }

                                            userAnswers.add(user
                                                .data.value["option2"]
                                                .toString());
                                            rightUserAnswers.add(user
                                                .data.value["answer"]
                                                .toString());
                                            userQuestions.add(user
                                                .data.value["question"]
                                                .toString());

                                            change();
                                          },
                                          shape: RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(80.0)),
                                          padding: EdgeInsets.all(0.0),
                                          child: Ink(
                                            decoration: BoxDecoration(
                                                gradient: LinearGradient(
                                                  colors: [
                                                    Colors.green,
                                                    Colors.greenAccent
                                                  ],
                                                  begin: Alignment.centerLeft,
                                                  end: Alignment.centerRight,
                                                ),
                                                borderRadius:
                                                    BorderRadius.circular(
                                                        30.0)),
                                            child: Container(
                                              constraints: BoxConstraints(
                                                  maxWidth: 350.0,
                                                  minHeight: 50.0),
                                              alignment: Alignment.center,
                                              child: Text(
                                                user.data.value["option2"]
                                                    .toString(),
                                                textAlign: TextAlign.center,
                                                style: TextStyle(
                                                    color: Colors.white,
                                                    fontSize: 20),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  );
                        }
                        return null; // unreachable
                      },
                    ),
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
