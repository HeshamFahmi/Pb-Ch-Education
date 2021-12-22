import 'package:flutter/material.dart';

import '../aboutUs.dart';
import '../ourNews.dart';
import 'chooseQuizNumber.dart';

class ChooseQuizFasl extends StatefulWidget {
  final String bab;
  final String recievedSubject;
  final String recievedLevel;

  const ChooseQuizFasl({
    Key key,
    this.bab,
    this.recievedSubject,
    this.recievedLevel,
  }) : super(key: key);

  @override
  _ChooseQuizFaslState createState() => _ChooseQuizFaslState();
}

class _ChooseQuizFaslState extends State<ChooseQuizFasl> {
  var fasl = [];

  @override
  void initState() {
    super.initState();
    setState(() {
      //الصف الاول الثانوى

      if (widget.recievedSubject == "الكيمياء" &&
          widget.recievedLevel == "الصف الاول الثانوى" &&
          widget.bab == "الباب الاول") {
        fasl = ["الفصل الاول", "الفصل الثانى"];
      } else if (widget.recievedSubject == "الكيمياء" &&
          widget.recievedLevel == "الصف الاول الثانوى" &&
          widget.bab == "الباب الثانى") {
        fasl = ["الفصل الاول", "الفصل الثانى"];
      } else if (widget.recievedSubject == "الكيمياء" &&
          widget.recievedLevel == "الصف الاول الثانوى" &&
          widget.bab == "الباب الثالث") {
        fasl = ["الفصل الاول", "الفصل الثانى"];
      } else if (widget.recievedSubject == ("الفيزياء") &&
          widget.recievedLevel == ("الصف الاول الثانوى") &&
          widget.bab == ("الباب الاول")) {
        fasl = ["الفصل الاول", "الفصل الثانى"];
      } else if (widget.recievedSubject == ("الفيزياء") &&
          widget.recievedLevel == ("الصف الاول الثانوى") &&
          widget.bab == ("الباب الثانى")) {
        fasl = ["الفصل الاول", "الفصل الثانى", "الفصل الثالث"];
      } else if (widget.recievedSubject == ("الاحياء") &&
          widget.recievedLevel == ("الصف الاول الثانوى") &&
          widget.bab == ("الباب الاول")) {
        fasl = ["الفصل الاول", "الفصل الثانى", "الفصل الثالث"];
      } else if (widget.recievedSubject == ("الاحياء") &&
          widget.recievedLevel == ("الصف الاول الثانوى") &&
          widget.bab == ("الباب الثانى")) {
        fasl = ["الفصل الاول", "الفصل الثانى", "الفصل الثالث"];
      }

      //الصف الاول الثانوى

      //الصف الثانى الثانوى

      else if (widget.recievedSubject == ("الكيمياء") &&
          widget.recievedLevel == ("الصف الثانى الثانوى") &&
          widget.bab == ("الباب الاول")) {
        fasl = ["الدرس الاول", "الدرس الثانى", "الدرس الثالث"];
      } else if (widget.recievedSubject == ("الكيمياء") &&
          widget.recievedLevel == ("الصف الثانى الثانوى") &&
          widget.bab == ("الباب الثانى")) {
        fasl = [
          "الدرس الاول",
          "الدرس الثانى",
          "الدرس الثالث",
          "الدرس الرابع",
          "الدرس الخامس",
          "الدرس السادس"
        ];
      } else if (widget.recievedSubject == ("الفيزياء") &&
          widget.recievedLevel == ("الصف الثانى الثانوى") &&
          widget.bab == ("الباب الاول")) {
        fasl = ["الفصل الاول", "الفصل الثانى"];
      } else if (widget.recievedSubject == ("الفيزياء") &&
          widget.recievedLevel == ("الصف الثانى الثانوى") &&
          widget.bab == ("الباب الثانى")) {
        fasl = ["خواص الموائع المتحركة"];
      } else if (widget.recievedSubject == ("الاحياء") &&
          widget.recievedLevel == ("الصف الثانى الثانوى") &&
          widget.bab == ("الباب الاول")) {
        fasl = [
          "التغذيه الذاتيه",
          "تابع التغذيه الذاتيه",
          "التغذيه الغير ذاتيه"
        ];
      } else if (widget.recievedSubject == ("الاحياء") &&
          widget.recievedLevel == ("الصف الثانى الثانوى") &&
          widget.bab == ("الباب الثانى")) {
        fasl = [
          "النقل فى الانسان",
          "تابع النقل فى الانسان",
          "النقل فى النبات",
          "التنفس الخلوى",
          "التنفس فى الكائنات الحيه"
        ];
      } else if (widget.recievedSubject == ("الاحياء") &&
          widget.recievedLevel == ("الصف الثانى الثانوى") &&
          widget.bab == ("الباب الثالث")) {
        fasl = ["التنفس الخلوى", "التنفس فى الكائنات الحيه"];
      }

      //الصف الثانى الثانوى

      //الصف الثالث الثانوى

      else if (widget.recievedSubject == ("الكيمياء") &&
          widget.recievedLevel == ("الصف الثالث الثانوى") &&
          widget.bab == ("الباب الاول")) {
        fasl = ["الدرس الاول", "الدرس الثانى", "الدرس الثالث", "الدرس الرابع"];
      } else if (widget.recievedSubject == ("الكيمياء") &&
          widget.recievedLevel == ("الصف الثالث الثانوى") &&
          widget.bab == ("الباب الثانى")) {
        fasl = ["الدرس الاول", "الدرس الثانى", "الدرس الثالث"];
      } else if (widget.recievedSubject == ("الكيمياء") &&
          widget.recievedLevel == ("الصف الثالث الثانوى") &&
          widget.bab == ("الباب الثالث")) {
        fasl = [
          "الدرس الاول",
          "الدرس الثانى",
          "الدرس الثالث",
          "الدرس الرابع",
          "الدرس الخامس",
          "الدرس السادس",
          "الدرس السابع",
          "الدرس الثامن"
        ];
      } else if (widget.recievedSubject == ("الكيمياء") &&
          widget.recievedLevel == ("الصف الثالث الثانوى") &&
          widget.bab == ("العضويه")) {
        fasl = ["الالكانات"];
      } else if (widget.recievedSubject == ("الاحياء") &&
          widget.recievedLevel == ("الصف الثالث الثانوى") &&
          widget.bab == ("الباب الاول")) {
        fasl = [
          "الدعامة فى الكائنات الحية",
          "الحركه فى الكائنات الحية",
          "التنسيق الهرمونى فى الكائنات الحيه",
          "تابع الغدد فى الانسان",
          "طرق التكاثر فى الكائنات الحيه",
          "تابع طرق التكاثر فى الكائنات الحيه",
          "التكاثر فى النباتات الزهريه",
          "التكاثر فى الانسان",
          "تابع التكاثر فى الانسان"
        ];
      } else if (widget.recievedSubject == ("الجيولوجيا") &&
          widget.recievedLevel == ("الصف الثالث الثانوى") &&
          widget.bab == ("الباب الاول")) {
        fasl = ["الدرس الاول", "الدرس الثانى"];
      } else if (widget.recievedSubject == ("الجيولوجيا") &&
          widget.recievedLevel == ("الصف الثالث الثانوى") &&
          widget.bab == ("الباب الثانى")) {
        fasl = ["الدرس الاول", "الدرس الثانى"];
      } else if (widget.recievedSubject == ("الجيولوجيا") &&
          widget.recievedLevel == ("الصف الثالث الثانوى") &&
          widget.bab == ("الباب الثالث")) {
        fasl = ["الدرس الاول", "الدرس الثانى"];
      } else if (widget.recievedSubject == ("الجيولوجيا") &&
          widget.recievedLevel == ("الصف الثالث الثانوى") &&
          widget.bab == ("الباب الرابع")) {
        fasl = ["الدرس الاول", "الدرس الثانى", "الدرس الثالث"];
      } else if (widget.recievedSubject == ("الجيولوجيا") &&
          widget.recievedLevel == ("الصف الثالث الثانوى") &&
          widget.bab == ("الباب الخامس")) {
        fasl = ["الدرس الاول", "الدرس الثانى", "الدرس الثالث", "الدرس الرابع"];
      }

      //الصف الثالث الثانوى
    });
  }

  @override
  Widget build(BuildContext context) {
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
                children: <Widget>[
                  Text(
                    'مـن فضــلك اختــر',
                    style: new TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 30.0,
                        color: Colors.green[900]),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  ListView.builder(
                      shrinkWrap: true,
                      itemCount: fasl.length,
                      itemBuilder: (context, index) {
                        return Padding(
                          padding: const EdgeInsets.fromLTRB(40.0, 0, 40.0, 10),
                          child: Container(
                            width: double.infinity,
                            child: FlatButton(
                              color: Colors.green,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(18.0)),
                              child: new Text(
                                fasl[index],
                                style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white),
                              ),
                              onPressed: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => ChooseQuizNumber(
                                        fasl: fasl[index],
                                        recievedBab: widget.bab,
                                        recievedLevel: widget.recievedLevel,
                                        recievedSubject: widget.recievedSubject,
                                      ),
                                    ));
                              },
                            ),
                          ),
                        );
                      }),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
