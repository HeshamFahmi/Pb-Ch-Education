import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';
import 'package:circular_countdown/circular_countdown.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:pbcheducations/teacherExamEnd.dart';

import 'aboutUs.dart';
import 'homePage.dart';
import 'ourNews.dart';

class TeacherExamMain extends StatefulWidget {
  final String username;
  final String examCode;

  const TeacherExamMain({
    Key key,
    this.username,
    this.examCode,
  }) : super(key: key);

  @override
  _TeacherExamMainState createState() => _TeacherExamMainState();
}

var count = 1;

Future<InitializationStatus> _initGoogleMobileAds() {
  return MobileAds.instance.initialize();
}

class _TeacherExamMainState extends State<TeacherExamMain> {
  final databaseRef =
      FirebaseDatabase.instance.reference().child("myintensive");

  String activationType;
  int numOfQues;

  bool loading = true;

  int rightAnswers = 0;

  int quizTime;

  String techername;

  BannerAd _bannerAd;

  void initState() {
    printFirebase();
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

  void printFirebase() {
    databaseRef.child(widget.examCode).once().then((DataSnapshot snapshot) {
      numOfQues = snapshot.value['totalnumbersofquestions'];
      activationType = snapshot.value['activation'];
      techername = snapshot.value['teachername'];
      quizTime = snapshot.value['timer'];
      print(activationType);
      print(techername);
      print(quizTime.toString());
      print(snapshot.value['totalnumbersofquestions'].toString());

      setState(() {
        loading = false;
      });
    });
  }

  void change() {
    setState(() {
      if (count < numOfQues) {
        count++;
      } else {
        count = 1;
        Navigator.pushAndRemoveUntil(
          context,
          MaterialPageRoute(
            builder: (context) => TeacherExamEnd(
              rights: rightAnswers,
              teacherName: techername,
              examCode: widget.examCode,
              examUsername: widget.username,
            ),
          ),
          (Route<dynamic> route) => false,
        );
      }
    });
  }

  @override
  void dispose() {
    count = 1;
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final AdWidget adWidget = AdWidget(ad: _bannerAd);
    return MaterialApp(
      title: 'استاذى',
      home: Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [HexColor("#a1c4fd"), HexColor("#c2e9fb")])),
        child: Scaffold(
          backgroundColor: Colors.transparent,
          appBar: AppBar(
            title: Text("أستاذى"),
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
            backgroundColor: HexColor("#a1c4fd"),
            elevation: 50.0,
            leading: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Image.asset(
                'assets/scholarship.png',
              ),
            ), //IconButton
          ),
          body: loading
              ? Center(child: CircularProgressIndicator())
              : activationType == "unactive"
                  ? Center(
                      child: SingleChildScrollView(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(
                                "Pb Ch Educations",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 40,
                                    color: Colors.white),
                              ),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Image.network(
                                "https://image.flaticon.com/icons/png/512/223/223220.png",
                                width: 200,
                                height: 200,
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Container(
                                padding: EdgeInsets.all(10),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(13),
                                  color: Colors.white,
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text(
                                      'Sorry This Exam is not active now ...',
                                      style: TextStyle(
                                          fontSize: 22,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.pink)),
                                ),
                              ),
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.fromLTRB(30.0, 5, 30, 5),
                              child: GestureDetector(
                                onTap: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) => HomePage(),
                                      ));
                                },
                                child: Container(
                                  width: double.infinity,
                                  padding: EdgeInsets.all(10),
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(13),
                                    color: Colors.blue[900],
                                  ),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: <Widget>[
                                      Icon(
                                        Icons.arrow_back,
                                        size: 30,
                                        color: Colors.white,
                                      ),
                                      SizedBox(
                                        width: 10,
                                      ),
                                      Text(
                                        "الرجوع للقائمه الرئيسيه",
                                        style: TextStyle(
                                            fontSize: 30,
                                            fontWeight: FontWeight.bold,
                                            color: Colors.white),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    )
                  : Center(
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
                              countdownTotal: quizTime,
                              onUpdated: (unit, remainingTime) {},
                              textStyle: TextStyle(
                                  color: Colors.green[900], fontSize: 20),
                              onFinished: () {
                                Navigator.pushAndRemoveUntil(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => TeacherExamEnd(
                                      rights: rightAnswers,
                                      teacherName: techername,
                                    ),
                                  ),
                                  (Route<dynamic> route) => false,
                                );
                              },
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Directionality(
                              textDirection: TextDirection.rtl,
                              child: FutureBuilder(
                                future: FirebaseDatabase.instance
                                    .reference()
                                    .child("myintensive")
                                    .child(widget.examCode)
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
                                      return Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Padding(
                                            padding: const EdgeInsets.all(20.0),
                                            child: Text(
                                              'السؤال $count : ' +
                                                  user.data.value["question"]
                                                      .toString() +
                                                  "؟",
                                              textAlign: TextAlign.right,
                                              style: TextStyle(
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 30,
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

                                                change();
                                              },
                                              shape: RoundedRectangleBorder(
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          80.0)),
                                              padding: EdgeInsets.all(0.0),
                                              child: Ink(
                                                decoration: BoxDecoration(
                                                    gradient: LinearGradient(
                                                      colors: [
                                                        HexColor("#a1c4fd"),
                                                        HexColor("#c2e9fb")
                                                      ],
                                                      begin:
                                                          Alignment.centerLeft,
                                                      end:
                                                          Alignment.centerRight,
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
                                                        color:
                                                            Colors.green[900],
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

                                                change();
                                              },
                                              shape: RoundedRectangleBorder(
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          80.0)),
                                              padding: EdgeInsets.all(0.0),
                                              child: Ink(
                                                decoration: BoxDecoration(
                                                    gradient: LinearGradient(
                                                      colors: [
                                                        HexColor("#a1c4fd"),
                                                        HexColor("#c2e9fb")
                                                      ],
                                                      begin:
                                                          Alignment.centerLeft,
                                                      end:
                                                          Alignment.centerRight,
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
                                                        color:
                                                            Colors.green[900],
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

                                                change();
                                              },
                                              shape: RoundedRectangleBorder(
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          80.0)),
                                              padding: EdgeInsets.all(0.0),
                                              child: Ink(
                                                decoration: BoxDecoration(
                                                    gradient: LinearGradient(
                                                      colors: [
                                                        HexColor("#a1c4fd"),
                                                        HexColor("#c2e9fb")
                                                      ],
                                                      begin:
                                                          Alignment.centerLeft,
                                                      end:
                                                          Alignment.centerRight,
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
                                                        color:
                                                            Colors.green[900],
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

                                                change();
                                              },
                                              shape: RoundedRectangleBorder(
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          80.0)),
                                              padding: EdgeInsets.all(0.0),
                                              child: Ink(
                                                decoration: BoxDecoration(
                                                    gradient: LinearGradient(
                                                      colors: [
                                                        HexColor("#a1c4fd"),
                                                        HexColor("#c2e9fb")
                                                      ],
                                                      begin:
                                                          Alignment.centerLeft,
                                                      end:
                                                          Alignment.centerRight,
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
                                                        color:
                                                            Colors.green[900],
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
